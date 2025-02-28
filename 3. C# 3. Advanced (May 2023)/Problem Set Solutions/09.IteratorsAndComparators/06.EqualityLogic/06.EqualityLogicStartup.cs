using _06.EqualityLogic;

SortedSet<Person> sortedSet = new SortedSet<Person>();
PersonEqualityComparer comparer = new PersonEqualityComparer();
HashSet<Person> hashSet = new HashSet<Person>(comparer);

int n = int.Parse(Console.ReadLine());
for (int i = 0; i < n; i++)
{
    string[] tokens = Console.ReadLine().Split();
    Person person = new Person(tokens[0], int.Parse(tokens[1]));
    sortedSet.Add(person);
    hashSet.Add(person);
    // Console.WriteLine($"Sorted set count {sortedSet.Count}:");
    // Console.WriteLine($"Hashset count: {hashSet.Count}");
}

Console.WriteLine(sortedSet.Count);
Console.WriteLine(hashSet.Count);