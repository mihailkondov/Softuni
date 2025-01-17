// 06. Triples Of Latin Letters 

int n = int.Parse(Console.ReadLine());

for (int i = 97; i < n + 97; i++)
{
    for (int j = 97; j < n + 97; j++)
    {

        for (int k = 97; k < n + 97; k++)
        {
            Console.Write((char)i);
            Console.Write((char)j);
            Console.WriteLine((char)k);
        }
    }
}
