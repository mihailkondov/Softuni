// 05. Top Integers

string[] input = Console.ReadLine().Split(" ");
int[] numbers = new int[input.Length];

for (int i = 0; i < numbers.Length; i++)
{
    numbers[i] = int.Parse(input[i]);
}

for (int i = 0; i < numbers.Length - 1; i++)
{
    bool greater = true;
    for (int j = i + 1; j < numbers.Length; j++)
    {
        if (numbers[i] <= numbers[j])
        {
            greater = false;
        }
    }
    if (greater == true)
    {
        Console.Write(numbers[i] + " ");
    }
}
Console.WriteLine(numbers[numbers.Length - 1]);