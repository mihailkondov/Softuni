using System;

namespace uprajnenie4_petya_otiva_na_ekskurziq
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double Pekskurziq = double.Parse(Console.ReadLine());
            double Ppaz = 2.6;
            double Pkuk = 3;
            double Pmec = 4.1;
            double Pmin = 8.2;
            double Pkam = 2;
            int Qpaz = int.Parse(Console.ReadLine());
            int Qkuk = int.Parse(Console.ReadLine());
            int Qmec = int.Parse(Console.ReadLine());
            int Qmin = int.Parse(Console.ReadLine());
            int Qkam = int.Parse(Console.ReadLine());

            double oborot = Ppaz * Qpaz + Pkuk * Qkuk + Pmec * Qmec + Pmin * Qmin + Pkam * Qkam;
            if (Qpaz + Qkuk + Qmec + Qmin + Qkam >= 50) 
            {
                oborot *= 0.75;
            }
            double profit = oborot * 0.9; //razhod za naem

            if (profit >= Pekskurziq)
            {
                Console.WriteLine($"Yes! {profit - Pekskurziq:F2} lv left.");
            } else
            { 
              Console.WriteLine($"Not enough money! {Pekskurziq-profit:F2} lv needed."
);
            }
        }
    }
}
