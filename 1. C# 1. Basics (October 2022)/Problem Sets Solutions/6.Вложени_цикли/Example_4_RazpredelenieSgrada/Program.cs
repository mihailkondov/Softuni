using System;

namespace Example_4_RazpredelenieSgrada
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int floors = int.Parse(Console.ReadLine());
            int units = int.Parse(Console.ReadLine());
            char prefix = '.';
            string number = "";
            for(int i=floors; i>0; i--)
            {
                if (i == floors)
                {
                    prefix = 'L';
                }
                else if (i % 2 == 0)
                {
                    prefix = 'O';
                }
                else
                {
                    prefix = 'A';
                }
               for(int j = 0; j<units ; j++)
                {
                    number = $"{i}{j} ";
                    Console.Write(prefix+number);
                }
                Console.WriteLine();
            }
            
        }
    }
}
