using System;

namespace Problem2_Spaceship
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double width =double.Parse(Console.ReadLine());
            double length= double.Parse(Console.ReadLine());
            double height= double.Parse(Console.ReadLine());
            double tallness= double.Parse(Console.ReadLine());
            int n = 0; //broi astronavti

            // obem na staq:
            double Vship = width * length * height;
            double Vroom = 2 * 2 * (tallness + .4);
            n = (int)Math.Floor(Vship / Vroom);


            if (n >= 3 && n<= 10)
            {
                Console.WriteLine($"The spacecraft holds {n} astronauts.");
            }else if (n < 3)
            {
                Console.WriteLine("The spacecraft is too small.");
            } else if (n > 10)
            {
                Console.WriteLine("The spacecraft is too big.");
            }
        }
    }
}
