// 09. Predicate Party!

// Define functions

Func<string, string, bool> startsWith = (string name, string substring) =>
{
    return name.Substring(0, substring.Length) == substring;
};

Func<string, string, bool> endsWith = (string name, string substring) =>
{
    return name.Substring(name.Length - substring.Length, substring.Length) == substring;
};

Func<string, string, bool> hasLength = (string name, string parameter) =>
{
    int len = int.Parse(parameter);
    return name.Length == len;
};

Func<string, string, Func<string, string, bool>> criteria = (string name, string criteriaCommand) =>
{
    if (criteriaCommand == "StartsWith")
    {
        return startsWith;
    }
    else if (criteriaCommand == "EndsWith")
    {
        return endsWith;
    }
    else if (criteriaCommand == "Length")
    {
        return hasLength;
    }
    else
    {
        throw new ArgumentException($"Invalid parameter {criteriaCommand}");
    }
};

Func<List<string>, string, string, string, List<string>> editGuests =
(guests, command, criteriaCommand, parameter) =>
{
    Func<string, string, bool> currentCriteria;
    List<string> newGuestList = new List<string>();
    foreach (string guest in guests)
    {
        currentCriteria = criteria(guest, criteriaCommand);
        if (currentCriteria(guest, parameter))
        {
            if (command == "Double")
            {
                newGuestList.Add(guest);
                newGuestList.Add(guest);
            }
            else if (command == "Remove")
            {
                continue;
            }
            else
            {
                throw new Exception("Invalid command");
            }
        }
        else
        {
            newGuestList.Add(guest);
        }
    }
    return newGuestList;
};

// Read user input and edit the guest list
List<string> guests = Console.ReadLine().Split().ToList();
string input = string.Empty;
while ((input = Console.ReadLine()!) != "Party!")
{
    string[] cmdArgs = input.Split().ToArray();
    string command = cmdArgs[0];
    string criteriaCommand = cmdArgs[1];
    string parameter = cmdArgs[2];

    guests = editGuests(guests, command, criteriaCommand, parameter);
}

// Print Result
if (guests.Count > 0)
{
    Console.WriteLine(string.Join(", ", guests) + " are going to the party!");
}
else
{
    Console.WriteLine("Nobody is going to the party!");
}