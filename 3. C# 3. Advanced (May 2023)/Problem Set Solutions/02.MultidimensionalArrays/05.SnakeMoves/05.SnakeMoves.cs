// 05. Snake Moves

using System.Data;

namespace _05.SnakeMoves
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] dim = Console.ReadLine().Split().Select(s => int.Parse(s)).ToArray();
            string snake = Console.ReadLine();
            char[,] field = new char[dim[0], dim[1]];
            int snakeIndex = 0;
            for (int i = 0; i < dim[0]; i++) // row
            {
                for (int j = 0; j < dim[1]; j++) // entries in the row
                {
                    if (i % 2 == 0)
                    {
                        field[i, j] = snake[snakeIndex];
                    }
                    else
                    {
                        field[i, dim[1] - j - 1] = snake[snakeIndex];
                    }

                    // endless iteration over the snake string:
                    if (snakeIndex == snake.Length - 1)
                    {
                        snakeIndex = 0;
                    }
                    else
                    {
                        snakeIndex++;
                    }
                }
            }

            for (int i = 0; i < dim[0]; i++)
            {
                for (int j = 0; j < dim[1]; j++)
                {
                    Console.Write(field[i, j]);
                }
                Console.WriteLine();
            }
        }
    }
}
