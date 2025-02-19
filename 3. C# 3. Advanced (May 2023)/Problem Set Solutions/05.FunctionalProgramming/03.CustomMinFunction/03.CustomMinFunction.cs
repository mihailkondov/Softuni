// 03. Custom Min Function

Func<int[], int> customMin = ints =>
{
    int minimum = int.MaxValue;
    foreach (var i in ints)
    {
        if (i < minimum)
        {
            minimum = i;
        }
    }
    return minimum;
};

int[] ints = Console.ReadLine()!.Split(' ').Select(int.Parse).ToArray();
int minimum = customMin(ints);
Console.WriteLine(minimum);