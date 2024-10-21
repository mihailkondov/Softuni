using System;

namespace Problem5_PuppyCare
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int kgKupenaHrana = int.Parse(Console.ReadLine());
            int gKupenaHrana = 1000 * kgKupenaHrana;
            string izqjdam="0";
            int consumed = 0;
            while (izqjdam != "Adopted")
            {
                izqjdam = Console.ReadLine();
                if (izqjdam == "Adopted") break;
                else
                {
                    consumed +=int.Parse(izqjdam);
                }
            }
            if(consumed <= gKupenaHrana)
            {
                Console.WriteLine($"Food is enough! Leftovers: {gKupenaHrana - consumed} grams.");
            }
            else
            {
                Console.WriteLine($"Food is not enough. You need {consumed-gKupenaHrana} grams more.");
            }
        }
    }
}
