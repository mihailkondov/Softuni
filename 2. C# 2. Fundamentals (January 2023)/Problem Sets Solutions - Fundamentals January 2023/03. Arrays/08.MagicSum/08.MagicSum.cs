// 08. Magic Sum

int[] input = Console.ReadLine()
    .Split(" ")
    .Select(int.Parse)
    .ToArray();
int givenNumber = int.Parse(Console.ReadLine());

for (int i = 0; i < input.Length - 1; i++)
{
    for (int j = i + 1; j < input.Length - i; j++)
    {
        if (input[i] + input[j] == givenNumber)
        {
            Console.WriteLine($"{input[i]} {input[j]}");
        }
    }
}