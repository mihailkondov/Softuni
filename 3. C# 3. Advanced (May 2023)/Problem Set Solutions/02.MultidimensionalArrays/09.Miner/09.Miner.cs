// 09. Miner

namespace _09.Miner
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Read input
            int n = int.Parse(Console.ReadLine());
            string[] moves = Console.ReadLine().Split();
            char[,] field = new char[n, n];
            int[] pos = new int[2];
            int coalOnTheField = 0;
            for (int i = 0; i < n; i++)
            {
                char[] fieldRow = Console.ReadLine().Split().Select(char.Parse).ToArray();
                for (int j = 0; j < fieldRow.Length; j++)
                {
                    field[i, j] = fieldRow[j];
                    if (fieldRow[j] == 's')
                    {
                        pos = new int[] { i, j };
                    }
                    else if (fieldRow[j] == 'c')
                    {
                        coalOnTheField++;
                    }
                }
            }

            // Move miner
            foreach (string move in moves)
            {
                // Determine new position
                int[] oldPos = new int[2] { pos[0], pos[1] };
                if (move == "left")
                {
                    pos[1]--;
                }
                else if (move == "right")
                {
                    pos[1]++;

                }
                else if (move == "up")
                {
                    pos[0]--;
                }
                else if (move == "down")
                {
                    pos[0]++;
                }

                // Validate new position
                if (pos[0] < 0 || pos[0] == n || pos[1] < 0 || pos[1] == n)
                {
                    pos[0] = oldPos[0];
                    pos[1] = oldPos[1];
                    continue;
                }

                // Check what's on the new position
                if (field[pos[0], pos[1]] == 'c')
                {
                    coalOnTheField--;
                    field[pos[0], pos[1]] = '*';
                    if (coalOnTheField == 0)
                    {
                        Console.WriteLine($"You collected all coals! ({pos[0]}, {pos[1]})");
                        return;
                    }
                }
                else if (field[pos[0], pos[1]] == 'e')
                {
                    Console.WriteLine($"Game over! ({pos[0]}, {pos[1]})");
                    return;
                }
            }
            Console.WriteLine($"{coalOnTheField} coals left. ({pos[0]}, {pos[1]})");
        }
    }
}
