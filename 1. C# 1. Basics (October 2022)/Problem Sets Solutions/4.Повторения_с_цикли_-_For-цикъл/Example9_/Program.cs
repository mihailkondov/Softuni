using System;
using System.Dynamic;

namespace Example9_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int sumOdd = 0;
            int sumEven= 0;
            for(int i = 0; i < n; i++)
            {
                if (i % 2 == 0)
                {
                    // even
                    int input = int.Parse(Console.ReadLine());
                    sumEven += input;

                }
                else
                {
                    //odd
                    int input = int.Parse(Console.ReadLine());
                    sumOdd += input;


                }
            }
            if(sumOdd== sumEven)
            {
                Console.WriteLine("Yes");
            }
            else
            {
                Console.WriteLine("No");
                Console.WriteLine($"Diff:{sumOdd-sumEven}");
            }
        }
    }
}
