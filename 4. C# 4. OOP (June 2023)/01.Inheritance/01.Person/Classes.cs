// 01. Person - Classes

using System.Xml.Linq;

namespace _01.Person
{
    public class Person
    {
        private string name;
        private int age;

        public Person(string name, int age)
        {
            this.Name = name;
            this.Age = age;
        }

        public int Age { get => age; set => age = value; }

        public string Name
        {
            get { return this.name; }
            set { this.name = value; }
        }

        override public string ToString()
        {
            return $"Person -> Name: {Name}, Age: {Age}";
        }
    }

    public class Child : Person
    {
        public Child(string name, int age)
            : base(name, age)
        {
                
        }

        public override string ToString()
        {
            return $"Child -> Name: {base.Name}, Age: {base.Age}";
        }
    }
}
