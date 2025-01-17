// 05. Print Part Of ASCII Table

int start = int.Parse(Console.ReadLine());
int finish = int.Parse(Console.ReadLine());

for (int i = start; i < finish; i++)
{
    Console.Write($"{(char)i} ");
}
Console.WriteLine((char)finish);
