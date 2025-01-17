// 07. Max Sequence Of Elements

int[] input = Console.ReadLine()
    .Split(" ")
    .Select(int.Parse)
    .ToArray();

int maxSequence = 0;
int number = 0;
int currentSequence = 0;

for (int i = 1; i < input.Length; i++)
{
    if (input[i - 1] == input[i])
    {
        currentSequence += 1;
        if (currentSequence > maxSequence)
        {
            maxSequence = currentSequence;
            number = input[i];
        }
    }
    else
    {
        currentSequence = 0;
    }
}

for (int i = 0; i < maxSequence; i++)
{
    Console.Write($"{number} ");
}

Console.WriteLine(number);