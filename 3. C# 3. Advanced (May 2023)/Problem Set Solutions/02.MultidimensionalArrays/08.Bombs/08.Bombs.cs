// 08. Bombs

namespace _08.Bombs
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Read user input
            int n = int.Parse(Console.ReadLine());
            int[,] field = new int[n, n];
            for (int i = 0; i < n; i++)
            {
                int[] input = Console.ReadLine().Split().Select(int.Parse).ToArray();
                for (int j = 0; j < input.Length; j++)
                {
                    field[i, j] = input[j];
                }
            }

            List<int[]> bombs = new List<int[]>(Console.ReadLine().Split().Select(s => s.Split(",").Select(int.Parse).ToArray()));

            // Detonate bombs
            foreach (var bomb in bombs)
            {
                int x = bomb[1];
                int y = bomb[0];
                int power = field[y, x];
                // Dead cells can't explode:
                if (power <= 0)
                {
                    continue;
                }

                // up left
                if (x - 1 >= 0 && y - 1 >= 0)
                {
                    if (field[y - 1, x - 1] > 0)
                        field[y - 1, x - 1] -= power;
                }
                // up center
                if (y - 1 >= 0)
                {
                    if (field[y - 1, x] > 0)
                        field[y - 1, x] -= power;
                }
                // up right
                if (y - 1 >= 0 && x + 1 < n)
                {
                    if (field[y - 1, x + 1] > 0)
                        field[y - 1, x + 1] -= power;
                }
                // center left
                if (x - 1 >= 0)
                {
                    if (field[y, x - 1] > 0)
                        field[y, x - 1] -= power;
                }
                // ground zero
                field[y, x] = 0;
                // center right
                if (x + 1 < n)
                {
                    if (field[y, x + 1] > 0)
                        field[y, x + 1] -= power;
                }
                // bottom left
                if (y + 1 < n && x - 1 >= 0)
                {
                    if (field[y + 1, x - 1] > 0)
                        field[y + 1, x - 1] -= power;
                }
                // bottom center
                if (y + 1 < n)
                {
                    if (field[y + 1, x] > 0)
                        field[y + 1, x] -= power;
                }
                // bottom right
                if (y + 1 < n && x + 1 < n)
                {
                    if (field[y + 1, x + 1] > 0)
                        field[y + 1, x + 1] -= power;
                }
            }

            // Count cells alive and calculate their sum
            int sum = 0;
            int count = 0;
            foreach (int i in field)
            {
                if (i > 0)
                {
                    sum += i;
                    count++;
                }
            }

            // Print results
            Console.WriteLine($"Alive cells: {count}");
            Console.WriteLine($"Sum: {sum}");
            PrintField(field);
        }

        static void PrintField(int[,] field)
        {
            for (int i = 0; i < field.GetLength(0); i++)
            {
                for (int j = 0; j < field.GetLength(1); j++)
                {
                    Console.Write($"{field[i, j]} ");
                }
                Console.WriteLine();
            }
        }
    }
}
