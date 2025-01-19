// 01.Smallest Of Three Numbers

namespace _15.ExerciseMethods
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int a = int.Parse(Console.ReadLine());
            int b = int.Parse(Console.ReadLine());
            int c = int.Parse(Console.ReadLine());
            int output = Smol(a, b, c);
            Console.WriteLine(output);
        }

        private static int Smol(int a, int b, int c)
        {
            if (a <= b && a <= c)
            {
                return a;
            }
            else if (b <= c && b <= a)
            {
                return b;
            }
            else
            {
                return c;
            }
        }
    }
}