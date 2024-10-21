using System;

namespace Uprajnenie6_Pluvane
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double record = double.Parse(Console.ReadLine());
            double dist = double.Parse(Console.ReadLine());
            double v = double.Parse(Console.ReadLine());
            double zabavqne = Math.Floor(dist / 15)*12.5;
            double time = dist * v + zabavqne;

            if (record > time) 
            {
                Console.WriteLine($"Yes, he succeeded! The new world record is {time:F2} seconds.");
            }
            else 
            {
                Console.WriteLine($"No, he failed! He was {time-record:F2} seconds slower.");
            }
            
        }
    }
}
