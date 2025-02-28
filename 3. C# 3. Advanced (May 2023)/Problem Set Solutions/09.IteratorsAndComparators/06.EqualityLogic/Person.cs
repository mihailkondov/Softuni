using System.Diagnostics;

namespace _06.EqualityLogic
{
    [DebuggerDisplay("{DebuggerDisplay}")]

    internal class Person : IComparable<Person>
    {

        public Person(string name, int age)
        {
            this.Name = name;
            this.Age = age;
        }
        public string Name { get; set; }
        public int Age { get; set; }

        public int CompareTo(Person? other)
        {
            int nameDiff = this.Name.CompareTo(other.Name);
            if (nameDiff == 0)
            {
                return this.Age.CompareTo(other.Age);
            }
            else
            {
                return nameDiff;
            }
        }

        private string DebuggerDisplay =>
            $"{this.Name} {this.Age}";
    }
}
