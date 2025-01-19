// 08. Factorial Division

namespace _08.FactorialDivision
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int a = int.Parse(Console.ReadLine());
            int b = int.Parse(Console.ReadLine());
            PrintDivide(a, b);
        }

        static long Factorial(int a)
        {
            long result = 1;
            for (long i = a; i > 1; i--)
            {
                result *= i;
            }
            return result;
        }

        static void PrintDivide(int a, int b)
        {
            long fa = Factorial(a);
            long fb = Factorial(b);
            decimal result = (decimal)fa / fb;
            Console.WriteLine($"{result:F2}");
        }
    }
}