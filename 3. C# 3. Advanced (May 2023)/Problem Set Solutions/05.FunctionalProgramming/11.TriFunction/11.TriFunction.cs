// 11. TriFunction

Func<string, int, bool> checkPrintCriteria = (string name, int maxSum) =>
{
    int sum = 0;
    foreach (char c in name)
    {
        sum += c;
    }
    return sum >= maxSum;
};

Action<List<string>, int> printFirstOverSum = (List<string> list, int N) =>
{
    foreach (string name in list)
    {
        if (checkPrintCriteria(name, N))
        {
            Console.WriteLine(name);
            return;
        }
    }
};

int N = int.Parse(Console.ReadLine()!);
List<string> list = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).ToList();

printFirstOverSum(list, N);
