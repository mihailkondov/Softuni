// 06.Equal Sum

int[] numbers = Console.ReadLine()
    .Split(" ")
    .Select(int.Parse)
    .ToArray();

for (int i = 0; i < numbers.Length; i++)
{
    int leftsum = 0;
    int rightsum = 0;
    for (int j = 0; j < i; j++)
    {
        leftsum += numbers[j];
    }

    for (int j = i + 1; j < numbers.Length; j++)
    {
        rightsum += numbers[j];
    }

    if (leftsum == rightsum)
    {
        Console.WriteLine(i);
        return;
    }
}
Console.WriteLine("no");