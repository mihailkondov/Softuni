using System;

namespace Example6_min_max
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine()); 
            
            double min = double.MaxValue;
            double max = double.MinValue;
            do
            {
                string input = Console.ReadLine();
                if (input == "Stop") break;
                if (double.Parse(input) < min) min = double.Parse(input);
                if(double.Parse(input) > max) max = double.Parse(input);
                n--;
                if (input == "Stop");
            }
            while (n>0);
            Console.WriteLine($"min {min}; max {max}");
        }
    }
}
