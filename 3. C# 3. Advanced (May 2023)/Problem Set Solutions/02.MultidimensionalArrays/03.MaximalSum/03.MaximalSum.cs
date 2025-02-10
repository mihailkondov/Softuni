// 03. Maximal Sum

namespace _3.MaximalSum
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] input = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .ToArray();

            if (input.Length != 2)
            {
                return;
            }

            int rows = input[0];
            int cols = input[1];
            int[,] matrix = new int[rows, cols];

            for (int i = 0; i < rows; i++)
            {
                int[] rowData = Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .Select(int.Parse)
                    .ToArray();

                if (rowData.Length != cols)
                {
                    return;
                }

                for (int j = 0; j < cols; j++)
                {
                    matrix[i, j] = rowData[j];
                }
            }

            int max = int.MinValue;
            int[] indicesOfMax = new int[2];

            for (int i = 0; i < rows - 2; i++)
            {
                for (int j = 0; j < cols - 2; j++)
                {
                    int currentSum = 0;
                    for (int k = i; k < i + 3; k++)
                    {
                        for (int l = j; l < j + 3; l++)
                        {
                            currentSum += matrix[k, l];
                        }
                    }

                    if (currentSum > max)
                    {
                        max = currentSum;
                        indicesOfMax[0] = i;
                        indicesOfMax[1] = j;
                    }
                }
            }

            Console.WriteLine("Sum = " + max);
            for (int i = indicesOfMax[0]; i < indicesOfMax[0] + 3; i++)
            {
                for (int j = indicesOfMax[1]; j < indicesOfMax[1] + 3; j++)
                {
                    Console.Write(matrix[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}