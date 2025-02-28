using System.Diagnostics.CodeAnalysis;

namespace _06.EqualityLogic
{
    internal class PersonEqualityComparer : IEqualityComparer<Person>
    {
        public bool Equals(Person? x, Person? y)
        {
            return x.CompareTo(y) == 0;
        }

        public int GetHashCode([DisallowNull] Person obj)
        {
            var res = HashCode.Combine(obj.Age, obj.Name);
            return res;
        }
    }
}
