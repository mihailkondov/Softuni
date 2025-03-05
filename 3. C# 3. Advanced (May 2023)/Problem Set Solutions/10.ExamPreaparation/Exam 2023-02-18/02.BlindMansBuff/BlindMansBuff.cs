// 02. Blind Man's Buff
// https://judge.softuni.org/Contests/Practice/Index/3913#1

namespace _02.BlindMansBuff
{
    internal class BlindMansBuff
    {
        static void Main(string[] args)
        {
            int[] dimensions = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
            int N = dimensions[0];
            int M = dimensions[1];
            char[,] matrix = new char[N, M];

            int[] currentPos = new int[2];
            for (int i = 0; i < N; i++)
            {
                char[] rowArray = Console.ReadLine()!
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .ToArray().Select(char.Parse)
                    .ToArray();
                for (int j = 0; j < M; j++)
                {
                    char symbol = rowArray[j];
                    matrix[i, j] = symbol;
                    if (symbol == 'B')
                    {
                        currentPos[0] = i;
                        currentPos[1] = j;
                    }
                }
            }

            //in-game movement and interactions:
            int moveCount = 0;
            int touchedOpponents = 0;
            int[] nextPos = new int[2];
            string input;
            while (((input = Console.ReadLine()) != "Finish"))
            {
                nextPos[0] = currentPos[0];
                nextPos[1] = currentPos[1];
                switch (input)
                {
                    case "up":
                        nextPos[0]--;
                        break;
                    case "down":
                        nextPos[0]++;
                        break;
                    case "left":
                        nextPos[1]--;
                        break;
                    case "right":
                        nextPos[1]++;
                        break;
                }

                //Check if outside of bounds
                if (nextPos[0] < 0 || nextPos[1] < 0
                    || nextPos[0] >= N || nextPos[1] >= M)
                {
                    //PrintField(N, M, matrix);
                    continue; //Can't move outside of array
                }
                else if (matrix[nextPos[0], nextPos[1]] == 'O')
                {
                    //PrintField(N, M, matrix);
                    continue; //Obstacle hit
                }

                if (matrix[nextPos[0], nextPos[1]] == 'P') //Opponent Touched
                {
                    touchedOpponents++;
                }

                matrix[currentPos[0], currentPos[1]] = '-';
                matrix[nextPos[0], nextPos[1]] = 'B';
                currentPos[0] = nextPos[0];
                currentPos[1] = nextPos[1];
                moveCount++;
                PrintField(N, M, matrix);
                if (touchedOpponents == 3)
                    break;
            }

            Console.WriteLine("Game over!");
            Console.WriteLine($"Touched opponents: {touchedOpponents} Moves made: {moveCount}");
        }

        // This part is not required for the solution, but is helpful for debugging.
        private static void PrintField(int N, int M, char[,] matrix)
        {
            if (true)
            {
                return;
            }

            for (int i = 0; i < N; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    Console.Write($"{matrix[i, j]} ");
                }
                Console.WriteLine();
            }
        }
    }
}