// 05. Applied Arithmetics

Action<List<int>> add = (List<int> list) =>
{
    for (int i = 0; i < list.Count; i++)
    {
        list[i] = list[i] + 1;
    }
};

Action<List<int>> multiply = (List<int> list) =>
{
    for (int i = 0; i < list.Count; i++)
    {
        list[i] = list[i] * 2;
    }
};

Action<List<int>> subtract = (List<int> list) =>
{
    for (int i = 0; i < list.Count; i++)
    {
        list[i] = list[i] - 1;
    }
};

Action<List<int>> print = (list) =>
{
    Console.WriteLine(string.Join(' ', list));
};

Dictionary<string, Action<List<int>>> functions = new Dictionary<string, Action<List<int>>>()
{
    { "add", add },
    { "subtract", subtract },
    { "multiply", multiply },
    { "print", print }
};

List<int> input = Console.ReadLine().Split().Select(int.Parse).ToList();
string command = string.Empty;
while ((command = Console.ReadLine()!) != "end")
{
    if (functions.ContainsKey(command))
    {
        functions[command](input);
    }
}