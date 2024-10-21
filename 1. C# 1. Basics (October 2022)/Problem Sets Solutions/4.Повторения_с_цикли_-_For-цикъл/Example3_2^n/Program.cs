using System;
using System.Dynamic;

namespace Example3_2_n
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            for (double i = 0; i <= n; i += 2)
            {
                double output = Math.Pow(2, i);
                Console.Write($"{output}");
                if (i < n)
                {
                    Console.Write(", ");
                }
            }
        }
    }
}
