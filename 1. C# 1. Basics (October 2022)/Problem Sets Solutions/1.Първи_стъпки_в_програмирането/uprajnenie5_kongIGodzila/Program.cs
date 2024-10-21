using System;

namespace uprajnenie5_kongIGodzila
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double budget = double.Parse(Console.ReadLine());
            int statisti = int.Parse(Console.ReadLine());
            double Pobl = double.Parse(Console.ReadLine());
            double dekor = budget * .1;
            if (statisti > 150) Pobl *= 0.9;
            double razhodi = statisti * Pobl + dekor;

            if (razhodi <= budget) 
            {
                Console.WriteLine("Action!");
                Console.WriteLine($"Wingard starts filming with {budget-razhodi:F2} leva left.");
            } else
            {
                Console.WriteLine("Not enough money!");
                Console.WriteLine($"Wingard needs {razhodi - budget:F2} leva more.");
            }
        }
    }
}
