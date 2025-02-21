namespace _03.OldestFamilyMember
{
    public class Person
    {
        private string name;
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

    public class Family
    {
        public List<Person> People = new List<Person>();

        public void AddMember(Person member)
        {
            People.Add(member);
        }

        public Person GetOldestMember()
        {
            return People.OrderByDescending(x => x.Age).First();
        }
    }
}
