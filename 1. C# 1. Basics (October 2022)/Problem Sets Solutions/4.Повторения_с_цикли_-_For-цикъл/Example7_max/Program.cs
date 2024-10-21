using System;

namespace Example6_sumiraneNaNChisla
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int min=0;
            int max=0;
            for (int i = 0; i < n; i++)
            {
                int input = int.Parse(Console.ReadLine());
                if (input < min||i==0)
                {
                    min = input;
                }
                if(input > max||i==0)
                {
                    max = input;
                }
            }
            Console.WriteLine($"Max number: {max}\nMin number: {min}");
        }
    }
}
