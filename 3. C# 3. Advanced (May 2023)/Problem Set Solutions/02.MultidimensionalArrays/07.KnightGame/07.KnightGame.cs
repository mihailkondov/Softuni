// 07. Knight Game

/*
 * Useful Test Input:
10
0K0K00K0K0
K000KK000K
00K0000K00
K000KK000K
0K0K00K0K0
0000000000
0000000000
0000000000
0000000000
0000000000

 */

namespace _07.KnightGame
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // When enabled the program prints the way it works step by step.
            bool debugging = false;

            // Read Input
            int dim = int.Parse(Console.ReadLine());
            // I don't really need a board, but it can be useful for debugging:
            char[,] board = new char[dim, dim];

            List<int[]> ktsPos = new List<int[]>();
            for (int i = 0; i < dim; i++)
            {
                var chars = Console.ReadLine().ToCharArray();
                for (int j = 0; j < dim; j++)
                {
                    if (debugging)
                    {
                        board[i, j] = chars[j];
                    }

                    if (chars[j] == 'K')
                    {
                        ktsPos.Add(new int[] { i, j });
                    }
                }
            }

            int[,] possibleMoves = new int[8, 2]
            {
                    { -1, -2 },
                    { -1, +2 },
                    { +1, -2 },
                    { +1, +2 },
                    { -2, -1 },
                    { -2, +1 },
                    { +2, -1 },
                    { +2, +1 },
            };

            int removedKnightsCount = 0;
            for (int contacts = 8; contacts > 0; contacts--)
            {
                for (int knightIndex = 0; knightIndex < ktsPos.Count; knightIndex++)
                {
                    int thisKnightsContacts = 0;
                    for (int moveIndex = 0; moveIndex < possibleMoves.GetLength(0); moveIndex++)
                    {
                        int[] newPosition = new int[2] {
                            ktsPos[knightIndex][0] + possibleMoves[moveIndex, 0],
                            ktsPos[knightIndex][1] + possibleMoves[moveIndex, 1]
                        };

                        for (int i = 0; i < ktsPos.Count; i++)
                        {
                            if (ktsPos[i][0] == newPosition[0] && ktsPos[i][1] == newPosition[1])
                            {
                                thisKnightsContacts++;
                            }
                        }
                    }

                    if (thisKnightsContacts == contacts)
                    {
                        removedKnightsCount++;
                        contacts++;
                        ktsPos.RemoveAt(knightIndex);

                        if (debugging)
                        {
                            board[ktsPos[knightIndex][0], ktsPos[knightIndex][1]] = '0';
                            Console.WriteLine($"Removed knight at position {ktsPos[knightIndex][0]}, {ktsPos[knightIndex][1]} with {contacts} contacts");
                            PrintBoard(board);
                        }
                    }
                }
            }
            Console.WriteLine(removedKnightsCount);
        }

        // This method is only used when debugging is set to true.
        static void PrintBoard(char[,] board)
        {
            int dim = board.GetLength(0);
            for (int i = 0; i < dim; i++)
            {
                for (int j = 0; j < dim; j++)
                {
                    Console.Write(board[i, j]);
                }
                Console.WriteLine();
            }
        }
    }
}
