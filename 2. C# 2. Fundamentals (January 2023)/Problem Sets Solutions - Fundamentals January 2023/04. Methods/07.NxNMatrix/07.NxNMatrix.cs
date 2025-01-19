// 07. NxN Matrix

namespace _07.NxNMatrix
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int a = int.Parse(Console.ReadLine());
            Matrix(a);
        }
        static void Matrix(int a)
        {
            for (int i = 0; i < a; i++)
            {
                for (int j = 0; j < a - 1; j++)
                {
                    Console.Write($"{a} ");
                }
                Console.WriteLine(a);
            }
        }
    }
}