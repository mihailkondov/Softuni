// 04. Sum Of Chars

int n = int.Parse(Console.ReadLine());
int sum = 0;

for (int i = 0; i < n; i++)
{
    char a = char.Parse(Console.ReadLine());
    sum += (int)a;
}

Console.WriteLine($"The sum equals: {sum}");

