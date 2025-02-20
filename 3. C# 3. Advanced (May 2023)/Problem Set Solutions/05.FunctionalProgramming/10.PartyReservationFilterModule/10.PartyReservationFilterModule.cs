// 10. Party Reservation Filter Module

Func<string, string, bool> startsWith = (string name, string substring) =>
{
    return name.Substring(0, substring.Length) == substring;
};

Func<string, string, bool> endsWith = (string name, string substring) =>
{
    return name.Substring(name.Length - substring.Length, substring.Length) == substring;
};

Func<string, string, bool> length = (string name, string lengthString) =>
{
    int length = int.Parse(lengthString);
    return name.Length == length;
};

Func<string, string, bool> contains = (string name, string substring) =>
{
    return name.Contains(substring);
};

Dictionary<string, Func<string, string, bool>> filterTypes = new();
filterTypes.Add("Starts with", startsWith);
filterTypes.Add("Ends with", endsWith);
filterTypes.Add("Length", length);
filterTypes.Add("Contains", contains);

// Key: {filter type, filter parameter}
// Value: Func(guestname, filter parameter)
Dictionary<(string, string), Func<string, string, bool>> activeConditions = new();

List<string> guests = Console.ReadLine().Split().ToList();
string input = string.Empty;
while ((input = Console.ReadLine()) != "Print")
{
    string[] cmdArgs = input.Split(";").ToArray();
    string command = cmdArgs[0];
    string filterType = cmdArgs[1];
    string parameter = cmdArgs[2];
    if (command == "Add filter")
    {
        activeConditions.Add((filterType, parameter), filterTypes[filterType]);
    }
    else if (command == "Remove filter" && activeConditions.ContainsKey((filterType, parameter)))
    {
        activeConditions.Remove((filterType, parameter));
    }
}

List<string> invitedGuests = guests
    .Where(g =>
        !activeConditions.Any(c => c.Value(g, c.Key.Item2))
    ).ToList();

Console.WriteLine(string.Join(" ", invitedGuests));