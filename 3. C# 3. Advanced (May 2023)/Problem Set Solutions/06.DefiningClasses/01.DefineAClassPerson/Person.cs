namespace DefiningClasses
{
    public class Person
    {
        // Fields
        private string name;
        private int age;

        // Constructors
        public Person()
        {

        }

        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }

        // Properties
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public int Age
        {
            get { return age; }
            set { age = value; }
        }

        // Methods go down here
    }
}
