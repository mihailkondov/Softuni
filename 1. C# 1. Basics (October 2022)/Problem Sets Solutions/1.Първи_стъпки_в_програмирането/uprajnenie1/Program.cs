using System;

namespace uprajnenie1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int t1 = int.Parse(Console.ReadLine());
            int t2 = int.Parse(Console.ReadLine());
            int t3 = int.Parse(Console.ReadLine());
            int ts = t1 + t2 + t3;
            int tm = ts / 60;
            int ostatuk = ts % 60;

            if (ostatuk < 10)
            {
                Console.WriteLine($"{tm}:0{ostatuk}");
            } else
            {
                Console.WriteLine($"{tm}:{ostatuk}");
            }

        }
    }
}
