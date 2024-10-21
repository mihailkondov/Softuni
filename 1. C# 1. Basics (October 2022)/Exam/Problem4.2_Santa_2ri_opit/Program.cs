using System;

namespace Problem4._2_Santa_2ri_opit
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());
            if (N > 10000)
            {
                Console.WriteLine("Error 1");
            }
            int M = int.Parse(Console.ReadLine());
            if (M<=N || M>10000)
            {
                Console.WriteLine("Error 2");
            }
            int S = int.Parse(Console.ReadLine());
            if(S<N||S>M)
            {
                Console.WriteLine("Error 3");
            }

            int flag2 = 0;
            for(int i = M; i>=N; i--)
            {
                if (i % 2 == 0)
                {   
                    if (i % 3 == 0)
                    {
                        if (flag2 == 1)
                        {
                            Console.Write(" ");
                        }                     
                        if (i == S)
                        {
                            break;
                        }
                        Console.Write($"{i}");
                        if (flag2 == 0) flag2 = 1;
                    }
                }
            }
        }
    }
}
