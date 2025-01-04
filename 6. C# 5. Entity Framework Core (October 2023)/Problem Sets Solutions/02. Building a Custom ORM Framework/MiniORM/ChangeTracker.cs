
using System.Reflection;

namespace MiniORM
{
    public class ChangeTracker<T> where T : class, new() 
    // new() means that whatever class you specify for T, it has a default (no parameters) constructor.
    // Therefore, in the generic class, you can do new T() and it will create a new object of type T.
    {
        private readonly List<T> _allEntities = new List<T>();
        private readonly List<T> _added = new List<T>();
        private readonly List<T> _removed = new List<T>();

        public ChangeTracker(IEnumerable<T> entities)
        {
            _added = new List<T>();
            _removed = new List<T>();
            _allEntities = CloneEntities(entities);
        }

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
    }
}