// 10. Radioactive Mutant Vampire Bunnies

namespace _10.RadioactiveMutantVampireBunnies
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Read input
            int[] dim = Console.ReadLine()!.Split().Select(x => int.Parse(x)).ToArray();
            int N = dim[0]; // rows
            int M = dim[1]; // columns
            char[,] field = new char[N, M];
            int[] pos = new int[2];
            for (int i = 0; i < N; i++)
            {
                string line = Console.ReadLine()!;
                for (int j = 0; j < M; j++)
                {
                    if (line[j] == 'P')
                    {
                        pos[0] = i;
                        pos[1] = j;
                        field[i, j] = '.';
                    }
                    else
                    {
                        field[i, j] = line[j];
                    }
                }
            }
            string moves = Console.ReadLine()!;

            // Play turns
            string endMessage = string.Empty;
            foreach (char move in moves)
            {
                // Find all bunnies
                List<int[]> bunniesAtStart = new List<int[]>();
                for (int i = 0; i < N; i++)
                {
                    for (int j = 0; j < M; j++)
                    {
                        if (field[i, j] == 'B')
                        {
                            bunniesAtStart.Add(new int[2] { i, j });
                        }
                    }
                }

                // Spawn new bunnies
                foreach (int[] bunny in bunniesAtStart)
                {
                    int y = bunny[0];
                    int x = bunny[1];

                    // up 
                    if (y - 1 >= 0)
                    {
                        field[y - 1, x] = 'B';
                    }

                    // left
                    if (x - 1 >= 0)
                    {
                        field[y, x - 1] = 'B';
                    }

                    // right
                    if (x + 1 < M)
                    {
                        field[y, x + 1] = 'B';
                    }

                    // down
                    if (y + 1 < N)
                    {
                        field[y + 1, x] = 'B';
                    }
                }

                // Move player
                int[] oldPos = new int[2] { pos[0], pos[1] };
                if (move == 'L')
                {
                    pos[1]--;
                }
                else if (move == 'R')
                {
                    pos[1]++;
                }
                else if (move == 'U')
                {
                    pos[0]--;
                }
                else if (move == 'D')
                {
                    pos[0]++;
                }

                // Check if escaped
                if (pos[0] < 0 || pos[0] == N || pos[1] < 0 || pos[1] == M)
                {
                    endMessage = $"won: {oldPos[0]} {oldPos[1]}";
                    break;
                }
                // Check if hit bunny
                else if (field[pos[0], pos[1]] == 'B')
                {
                    endMessage = $"dead: {pos[0]} {pos[1]}";
                    break;
                }
            }

            PrintField(field);
            Console.WriteLine(endMessage);
        }

        private static void PrintField(char[,] field)
        {
            for (int i = 0; i < field.GetLength(0); i++)
            {
                for (int j = 0; j < field.GetLength(1); j++)
                {
                    Console.Write(field[i, j]);
                }
                Console.WriteLine();
            }
        }
    }
}
