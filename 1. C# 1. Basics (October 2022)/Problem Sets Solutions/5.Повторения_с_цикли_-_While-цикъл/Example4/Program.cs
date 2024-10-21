using System;
using System.Dynamic;

namespace Example4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int current = 1;
            int n = int.Parse(Console.ReadLine());
            while (current<n)
            {   
                Console.WriteLine($"{current}");
                current = current * 2 + 1;
            }
        }
    }
}
