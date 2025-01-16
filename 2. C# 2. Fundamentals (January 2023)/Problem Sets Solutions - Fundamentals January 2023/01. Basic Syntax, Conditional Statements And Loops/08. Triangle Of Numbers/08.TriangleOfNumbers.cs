// 08.Triangle Of Numbers

int number = int.Parse(Console.ReadLine());
for (int j = 1; j <= number; j++)
{
    for (int k = 0; k < j; k++)
    {
        Console.Write($"{j} ");
    }
    Console.WriteLine();
}
