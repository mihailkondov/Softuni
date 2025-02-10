// 01. Diagonal Difference

namespace _02.MultidimensionalArrays
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());
            int[,] matrix = new int[N, N];

            for (int i = 0; i < N; i++)
            {
                int[] row = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
                for (int j = 0; j < N; j++)
                {
                    matrix[i, j] = row[j];
                }
            }

            int diag1 = 0;
            for (int i = 0; i < N; i++)
            {
                diag1 += matrix[i, i];
            }

            int diag2 = 0;
            for (int i = 0, j = N - 1; i < N; i++, j--)
            {
                diag2 += matrix[i, j];
            }

            int res = Math.Abs(diag1 - diag2);
            Console.WriteLine(res);
        }
    }
}