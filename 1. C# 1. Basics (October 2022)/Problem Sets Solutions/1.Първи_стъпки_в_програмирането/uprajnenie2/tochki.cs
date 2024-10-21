using System;

namespace uprajnenie2
{
    internal class tochki
    {
        static void Main(string[] args)
        {
            int tochki = int.Parse(Console.ReadLine());
            double bonus=0;
            if (tochki <= 100)
            {
                bonus += 5;
            }
            else if (tochki > 100 && tochki <= 1000)
            {
                bonus = (double)tochki * 0.2;
            }
            else
                bonus = (double)tochki * 0.1;

            if (tochki % 2 == 0)
            {
                bonus += 1;
            }
            else if (tochki % 5 == 0)
            { 
                bonus += 2;
            }
            else
            {
                //do nothing
            }
            Console.WriteLine($"{bonus}");
            Console.WriteLine($"{tochki+bonus}");
        }
    }
}
