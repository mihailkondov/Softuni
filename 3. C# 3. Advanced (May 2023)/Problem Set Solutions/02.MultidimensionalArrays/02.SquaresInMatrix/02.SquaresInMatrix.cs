// 02. Squares In Matrix

namespace _02.SquaresInMatrix
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] size = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .ToArray();

            if (size.Length != 2)
            {
                return;
            }

            int rows = size[0];
            int cols = size[1];
            char[,] matrix = new char[rows, cols];

            for (int i = 0; i < rows; i++)
            {
                char[] rowData = Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .Select(char.Parse)
                    .ToArray();

                for (int j = 0; j < cols; j++)
                {
                    matrix[i, j] = rowData[j];
                }
            }

            int numberOfSquares = 0;
            for (int i = 0; i < rows - 1; i++)
            {
                for (int j = 0; j < cols - 1; j++)
                {
                    if (matrix[i, j] == matrix[i + 1, j] &&
                        matrix[i, j] == matrix[i, j + 1] &&
                        matrix[i, j] == matrix[i + 1, j + 1])
                    {
                        numberOfSquares++;
                    }
                }
            }
            Console.WriteLine(numberOfSquares);
        }
    }
}