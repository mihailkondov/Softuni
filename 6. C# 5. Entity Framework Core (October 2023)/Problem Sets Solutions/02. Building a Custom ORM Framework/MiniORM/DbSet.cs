﻿using System.Collections;

namespace MiniORM
{
    public class DbSet<TEntity> : ICollection<TEntity>
        where TEntity : class, new()
    {
        // Constructor
        internal DbSet(IEnumerable<TEntity> entities)
        {
            Entities = entities.ToList();
            ChangeTracker = new ChangeTracker<TEntity>(entities);
        }

        // Properties
        public int Count => Entities.Count;

        internal ChangeTracker<TEntity> ChangeTracker { get; set; }

        internal IList<TEntity> Entities { get; set; }

        public bool IsReadOnly => Entities.IsReadOnly;

        // Methods
        public void Add(TEntity entity)
        {
            if(entity == null)
            {
                throw new ArgumentNullException("Item cannot be null.");
            }

            Entities.Add(entity);
            ChangeTracker.Add(entity);
        }

        public void Clear()
        {
            while (Entities.Any())
            {
                Entities.Remove(Entities.First());
            }
        }

        public bool Contains(TEntity item)
        {
            return Entities.Contains(item);
        }

        public void CopyTo(TEntity[] array, int arrayIndex)
        {
            Entities.CopyTo(array, arrayIndex);
        }

        public IEnumerator<TEntity> GetEnumerator()
        {
            return Entities.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public bool Remove(TEntity item)
        {
            if (item == null)
            {
                throw new ArgumentNullException("Item cannot be null.");
            }

            bool removedSuccessfully = Entities.Remove(item);
            if (removedSuccessfully)
            {
                ChangeTracker.Remove(item);
            }

            return removedSuccessfully;
        }

        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            foreach(var entity in entities.ToArray())
            {
                Remove(entity);
            }
        }
    }
}
