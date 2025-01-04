namespace MiniORM
{
    public class DbSet<TEntity> where TEntity : class, new()
    {
        // TODO: Create your DbSet class here.
        internal ChangeTracker<TEntity> ChangeTracker { get; set; }
        internal IList<TEntity> Entities { get; set; }
    }
}
