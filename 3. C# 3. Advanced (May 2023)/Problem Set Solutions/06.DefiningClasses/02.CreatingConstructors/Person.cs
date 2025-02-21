namespace DefiningClasses
{
    public class Person
    {
        private string name; // = String.Empty;
        private int age;

        public Person()
        {
            name = "No name";
            age = 1;
        }

        public Person(int age) : this()
        {
            this.age = age;
        }

        public Person(string name, int age) : this(age)
        {
            this.name = name;
        }

        public string Name
        {
            get { return this.name; }
            set { this.name = value; }
        }

        public int Age
        {
            get { return age; }
            set { age = value; }
        }
    }
}
