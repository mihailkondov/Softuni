using System;

namespace Uprajnenie7_Pazaruvane
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double budget = double.Parse(Console.ReadLine());
            int Qvid = int.Parse(Console.ReadLine());
            int Qpro = int.Parse(Console.ReadLine());
            int Qram = int.Parse(Console.ReadLine());
            double Pvid = 250;
            double Vexp = Qvid * Pvid;
            double Ppro = Vexp * 0.35;
            double Pram = Vexp * 0.1;
            double obshto = Vexp + Qpro * Ppro + Qram * Pram;
            if (Qvid > Qpro) obshto *= .85;
            if(budget>=obshto)
            {
                Console.WriteLine($"You have {budget-obshto:F2} leva left!");
            }
            else
            {
                Console.WriteLine($"Not enough money! You need {obshto-budget:F2} leva more!");
            }
        }
    }
}
