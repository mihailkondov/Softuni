using System;

namespace Example6_sumiraneNaNChisla
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int output = 0;
            for (int i = 0; i < n; i++) 
            { 
                int input = int.Parse(Console.ReadLine());
                output += input;
            }
            Console.WriteLine(output);
        }  
    }
}
