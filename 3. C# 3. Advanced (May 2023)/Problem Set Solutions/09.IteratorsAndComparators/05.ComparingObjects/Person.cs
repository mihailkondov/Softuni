namespace _05.ComparingObjects;
internal class Person : IComparable<Person>
{
    public string Name { get; set; }
    public int Age { get; set; }
    public string Town { get; set; }

    public Person(string name, int age, string town)
    {
        this.Name = name;
        this.Age = age;
        this.Town = town;
    }

    public int CompareTo(Person? other)
    {
        if (this.Name.CompareTo(other.Name) == 0)
        {
            if (this.Age.CompareTo(other.Age) == 0)
            {
                return this.Town.CompareTo(other.Town);
            }
            else
            {
                return this.Age.CompareTo(other.Age);
            }
        }
        else
        {
            return this.Name.CompareTo(other.Name);
        }
        throw new NotImplementedException();
    }
}
