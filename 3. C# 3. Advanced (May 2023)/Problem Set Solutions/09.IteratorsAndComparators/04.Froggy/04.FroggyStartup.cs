using _04.Froggy;

var stones = Console.ReadLine()
    .Split(", ", StringSplitOptions.RemoveEmptyEntries)
    .Select(int.Parse);
Lake<int> lake = new Lake<int>(stones);

Console.WriteLine(string.Join(", ", lake));
