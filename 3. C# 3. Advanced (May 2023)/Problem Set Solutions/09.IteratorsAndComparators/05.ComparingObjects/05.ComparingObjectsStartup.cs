using _05.ComparingObjects;

List<Person> people = new List<Person>();
string input = string.Empty;
while ((input = Console.ReadLine()) != "END")
{
    var tokens = input.Split();
    Person person = new Person(tokens[0], int.Parse(tokens[1]), tokens[2]);
    people.Add(person);
}
int personIndex = int.Parse(Console.ReadLine()) - 1;
int matches = people.Where(p => p.CompareTo(people[personIndex]) == 0).Count();
int unequal = people.Count - matches;

if (matches < 2)
    Console.WriteLine("No matches");
else
    Console.WriteLine($"{matches} {unequal} {people.Count}");

