using System;

namespace Example3_sum_numbers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int input1=int.Parse(Console.ReadLine());
            int sum = 0;
            while (sum<input1)
            {
                int input2 = int.Parse(Console.ReadLine());
                sum += input2;
               
            }
            Console.WriteLine($"sum is {sum}");
        }
    }
}
