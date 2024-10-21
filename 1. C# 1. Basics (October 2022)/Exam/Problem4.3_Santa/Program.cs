using System;

namespace Problem4._2_Santa_2ri_opit
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());
            int M = int.Parse(Console.ReadLine());
            int S = int.Parse(Console.ReadLine());
            for (int i = M; i >= N; i--)
            {
                if (i % 2 == 0)
                {
                    if (i % 3 == 0)
                    {
                        if (i == S)
                        {
                            break;
                        }
                        Console.Write($"{i} ");
                    }
                }
            }
        }
    }
}
