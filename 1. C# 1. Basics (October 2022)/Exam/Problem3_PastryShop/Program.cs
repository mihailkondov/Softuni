using System;

namespace Problem3_PastryShop
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string sladkish=Console.ReadLine();
            int q = int.Parse(Console.ReadLine());
            int date = int.Parse(Console.ReadLine());
            double total=0;
            double Ps = 0;
            // 1.Сладкиш - текст - "Cake", "Souffle" или "Baklava"
            // 2.Брой на поръчаните сладкиши - цяло число в интервала[1 … 10000]
            // 3.Ден от месец декември преди Коледа - цяло число в интервала[1 … 24]
            switch (sladkish)
            {
                case "Cake":
                    if (date <= 15)
                    {
                        Ps = 24;
                    }
                    else
                    {
                        Ps = 28.7;
                    }
                    break;
                case "Souffle":
                    if (date <= 15)
                    {
                        Ps = 6.66;
                    }
                    else
                    {
                        Ps = 9.8;
                    }
                    break;
                case "Baklava":
                    if (date <= 15)
                    {
                        Ps = 12.60;
                    }
                    else
                    {
                        Ps = 16.98;
                    }
                    break;
                default:
                    Console.WriteLine("error");
                    break;
            }
            double grossTotal = Ps * q;
            if (date <= 22)
            {
                if (grossTotal >= 100 && grossTotal <= 200)
                {
                    total = .85 * grossTotal;
                }
                else if (grossTotal > 200)
                {
                    total = 0.75 * grossTotal;
                }
                else
                {
                    total = grossTotal;
                }
                if (date <= 15)
                {
                    total *= 0.9;
                }
            }
            else
            {
                total = grossTotal;
            }

                Console.WriteLine($"{total:F2}");

        }
    }
}
