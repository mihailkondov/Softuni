using System;

namespace Example1_chasovnik
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int chas = 0;            
            while (chas < 24)
            {
                int min = 0;
                while (min < 60)
                {
                   
                    Console.WriteLine($"{chas}:{min}");
                    min++;
                }
                chas++;
            }
            
        }
    }
}
