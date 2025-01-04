
using System.ComponentModel.DataAnnotations;
using System.Reflection;

namespace MiniORM
{
    public class ChangeTracker<T> where T : class, new() 
    // new() means that whatever class you specify for T, it has a default (no parameters) constructor.
    // Therefore, in the generic class, you can do new T() and it will create a new object of type T.
    {
        #region Fields
        private readonly List<T> _allEntities = new List<T>();
        private readonly List<T> _added = new List<T>();
        private readonly List<T> _removed = new List<T>();
        #endregion

        #region Constructor
        public ChangeTracker(IEnumerable<T> entities)
        {
            _added = new List<T>();
            _removed = new List<T>();
            _allEntities = CloneEntities(entities);
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Creates a copy of the entities from the DbSet
        /// </summary>
        /// <param name="entities"></param>
        /// <returns></returns>
        private List<T> CloneEntities(IEnumerable<T> entities)
        {
            List<T> clonedEntities = new List<T>();
            var propertiesToClone = typeof(T).GetProperties()
                .Where(pi => DbContext.AllowedSqlTypes.Contains(pi.PropertyType))
                .ToArray();
            foreach (var entity in entities)
            {
                var clonedEntity = Activator.CreateInstance<T>();
                foreach (PropertyInfo property in propertiesToClone)
                {
                    var value = property.GetValue(entity);
                    property.SetValue(clonedEntity, value);
                }
                clonedEntities.Add(clonedEntity);
            }
            return clonedEntities;
        }

        /// <summary>
        /// Returns an IEnumerable collection of objects representing each primary key property's value of a given entity
        /// </summary>
        /// <param name="primaryKeys">IEnumerable<PropertyInfo> which holds the primary key properties</param>
        /// <param name="entity">T - the entity to which the primary keys belong to</param>
        /// <returns></returns>
        private static IEnumerable<object?> GetPrimaryKeyValues(IEnumerable<PropertyInfo> primaryKeys, T entity)
        {
            return primaryKeys.Select(pk => pk.GetValue(entity));
        }
            
        /// <summary>
        /// Compares all valid SQL property values of a proxy entity and the original entity. 
        /// Returns true if any of the property values differ, else returns false.
        /// </summary>
        /// <param name="entity">The original entities</param>
        /// <param name="proxyEntity">Proxy entities</param>
        /// <returns></returns>
        private static bool IsModified(T entity, T proxyEntity)
        {
            var monitoredProperties = typeof(T).GetProperties()
                .Where(pi => DbContext.AllowedSqlTypes.Contains(pi.PropertyType));
            var modifiedProperties = monitoredProperties
                .Where(pi => !Equals(pi.GetValue(entity), pi.GetValue(proxyEntity)))
                .ToArray();
            var isModified = modifiedProperties.Any();
            return isModified;
                
        }
        #endregion

        #region Properties
        public IReadOnlyCollection<T> AllEntities => _allEntities.AsReadOnly();
        public IReadOnlyCollection<T> Added => _added.AsReadOnly();
        public IReadOnlyCollection<T> Removed => _removed.AsReadOnly();
        #endregion

        #region Public Methods

        public void Add(T entity) => _added.Add(entity);
        public void Remove(T entity) => _removed.Add(entity);

        /// <summary>
        /// The method returns a collection of modified entities.
        /// In this method we have to get the primary keys for the current T object
        /// </summary>
        /// <param name="">DbSet<T></param>
        /// <returns></returns>
        public IEnumerable<T> GetModifiedEntities(DbSet<T> dbSet)
        {
            var modifiedEntities = new List<T>();
            var primaryKeys = typeof(T).GetProperties()
                .Where(pi => pi.HasAttribute<KeyAttribute>())
                .ToArray();

            foreach (var proxyEntity in AllEntities)
            {
                var primaryKeyValues= GetPrimaryKeyValues(primaryKeys, proxyEntity).ToArray();
                var entity = dbSet.Entities
                    .Single(entity => GetPrimaryKeyValues(primaryKeys, entity).SequenceEqual(primaryKeyValues));
                var isModified = IsModified(proxyEntity, entity);
                if(isModified)
                {
                    modifiedEntities.Add(proxyEntity);
                }
            }
            return modifiedEntities;
        }
        #endregion
    }
}