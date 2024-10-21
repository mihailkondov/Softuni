using System;

namespace Problem1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int Pv=int.Parse(Console.ReadLine());
            int Pp = int.Parse(Console.ReadLine());
            double Pev = double.Parse(Console.ReadLine());  //cena konsum tok ot karta na den 
            double profitVD = double.Parse(Console.ReadLine()); //pechalba ot karta na den
            double t; //Времето за възвръщане на инвестицията в дни(закръглени до по - голямото цяло число)
            int Qv = 13;
            int Qp = 13;
            int fix = 1000;
            double pechalbaNaDen = Qv * (profitVD - Pev);

            int totalFixedCosts = Qv * Pv + Qp * Pp + fix;
            t= ((double)totalFixedCosts) /(pechalbaNaDen);

            Console.WriteLine($"{totalFixedCosts}");
            Console.WriteLine($"{Math.Ceiling(t)}");
            
        }
    }
}
