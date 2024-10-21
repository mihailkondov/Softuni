using System;

namespace Problem4_Santa
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());  
            int M = int.Parse(Console.ReadLine());  
            int S = int.Parse(Console.ReadLine());

            //if (N < 0);
            //if(N>=M) return;
            //if(M<=N) return;
            //if (M > 10000) return;
            //if(N>S) return;
            //if(S>M) return;
            for(int i=M; i>N; i--)
            {
                if (i == S && i % 2 == 0 && i % 3 == 0) return;
                
                if (i % 2 == 0 && i % 3 == 0)
                {
                    if (i == S) break;
                    Console.Write($"{i}");

                }
            }
        }
    }
}
