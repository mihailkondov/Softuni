// 04. Print And Sum

int x1 = int.Parse(Console.ReadLine());
int x2 = int.Parse(Console.ReadLine());
int sum = 0;

for(int i = x1; i <= x2; i++)
{
    Console.Write($"{i} ");
    sum += i;
}
Console.WriteLine();

Console.WriteLine($"Sum: {sum}");
