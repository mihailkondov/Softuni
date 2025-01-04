namespace MiniORM
{
    public class DbContext
    {
        // TODO: Create your DbContext class here.
        internal static readonly Type[] AllowedSqlTypes =
        {
            typeof(string)
        ,   typeof(int)
        ,   typeof(uint)
        ,   typeof(long)
        ,   typeof(ulong)
        ,   typeof(decimal)
        ,   typeof(bool)
        ,   typeof(DateTime)
        };
    }
}
