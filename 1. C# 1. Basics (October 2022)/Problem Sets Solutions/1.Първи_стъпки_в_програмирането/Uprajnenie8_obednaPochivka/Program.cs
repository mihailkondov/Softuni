using System;

namespace Uprajnenie8_obednaPochivka
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string serial = Console.ReadLine();
            int duration = int.Parse(Console.ReadLine());
            int pochivka = int.Parse(Console.ReadLine());
            double obqd = pochivka * (1 / 8.00);
            double otdih = pochivka * (1 / 4.00);
            double gledane = (pochivka - obqd - otdih);

            if (duration <= gledane)//imam vreme da izgledam
            {
                Console.WriteLine($"You have enough time to watch {serial} and left with " +
                    $"{Math.Ceiling(gledane - duration)} minutes free time.");
            } else
            {
                Console.WriteLine($"You don't have enough time to watch {serial}," +
                    $" you need {Math.Ceiling(duration - gledane)} more minutes.");
            }
        }
    }
}
