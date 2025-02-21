namespace _03.OldestFamilyMember
{
    internal class StartUp
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());
            Family family = new Family();
            for (int i = 0; i < N; i++)
            {
                string[] nameAge = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries);
                string name = nameAge[0];
                int age = int.Parse(nameAge[1]);
                Person person = new Person(name, age);
                family.AddMember(person);
            }

            Person oldestPerson = family.GetOldestMember();
            Console.WriteLine($"{oldestPerson.Name} {oldestPerson.Age}");
        }
    }
}