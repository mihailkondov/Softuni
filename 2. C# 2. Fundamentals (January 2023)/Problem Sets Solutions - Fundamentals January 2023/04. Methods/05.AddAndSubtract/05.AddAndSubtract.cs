// 05. Add And Subtract

namespace _05.AddAndSubtract
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int a = int.Parse(Console.ReadLine());
            int b = int.Parse(Console.ReadLine());
            int c = int.Parse(Console.ReadLine());
            int sumTwo = SumTwo(a, b);
            int result = Subtract(sumTwo, c);
            Console.WriteLine(result);
        }

        private static int Subtract(int sumTwo, int c)
        {
            int output;
            return sumTwo - c;
        }

        static int SumTwo(int a, int b)
        {
            int output = a + b;
            return output;
        }
    }
}