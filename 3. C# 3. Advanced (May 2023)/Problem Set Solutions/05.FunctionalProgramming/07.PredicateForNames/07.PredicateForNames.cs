// 07. Predicate For Names

// Declare functions
Func<string, int, bool> printable = (string name, int length) =>
{
    if (name.Length <= length)
    {
        return true;
    }
    else
    {
        return false;
    }
};

Action<List<string>, int> printShortNames = (List<string> names, int maxLength) =>
{
    foreach (var name in names)
    {
        if (printable(name, maxLength))
        {
            Console.WriteLine(name);
        }
    }
};

// Input
int length = int.Parse(Console.ReadLine());
List<string> names = Console.ReadLine().Split(' ').ToList();

// Output
printShortNames(names, length);
