using System;
using System.Dynamic;

namespace ChasovnikSled15min
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int h = int.Parse(Console.ReadLine());
            int m = int.Parse(Console.ReadLine());
            m += 15;
            if (m >= 60)
            {
                h = h + m / 60;
                m = m % 60;
            }

            if (h >= 24)
            {
                h = h % 24;
            }

            Console.WriteLine($"{h}:{m:00}");
        }
    }
}
