// 04.Matrix Shuffling

namespace _04.MatrixShuffling
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] dim = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
            string[,] X = new string[dim[0], dim[1]];
            bool valid1 = true;

            for (int i = 0; i < dim[0]; i++)
            {
                string[] rowData = Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .ToArray();

                if (rowData.Length != dim[1])
                {
                    valid1 = false;
                    break;
                }

                for (int j = 0; j < rowData.Length; j++)
                {
                    X[i, j] = rowData[j];
                }
            }

            string cmdArg;
            while ((cmdArg = Console.ReadLine().ToLower()) != "end" && valid1 == true)
            {
                string[] commandArray = cmdArg.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToArray();

                if (commandArray.Length != 5)
                {
                    Console.WriteLine("Invalid input!");
                    continue;
                }

                string[] coordinatesString = { commandArray[1], commandArray[2], commandArray[3], commandArray[4] };
                int[] coordinates = coordinatesString.Select(int.Parse).ToArray();

                if (coordinates.Length != 4 || coordinates.Any(x => x < 0))
                {
                    Console.WriteLine("Invalid input!");
                    continue;
                }

                string command = commandArray[0];
                if (command == "swap")
                {
                    bool valid = true;
                    for (int i = 0; i < coordinates.Length; i++)
                    {
                        if (i % 2 == 0 && coordinates[i] > dim[0] - 1)
                        {
                            valid = false;
                        }

                        if (i % 2 == 1 && coordinates[i] > dim[1] - 1)
                        {
                            valid = false;
                        }
                    }

                    if (valid)
                    {
                        string placeholder = X[coordinates[0], coordinates[1]];
                        X[coordinates[0], coordinates[1]] = X[coordinates[2], coordinates[3]];
                        X[coordinates[2], coordinates[3]] = placeholder;

                        for (int k = 0; k < dim[0]; k++)
                        {
                            for (int j = 0; j < dim[1]; j++)
                            {
                                Console.Write($"{X[k, j]} ");
                            }
                            Console.WriteLine();
                        }
                    }
                    else
                    {
                        Console.WriteLine("Invalid input!");
                    }
                }
                else if (command == "END")
                {
                    break;
                }
                else
                {
                    Console.WriteLine("Invalid input!");
                }
            }
        }
    }
}