// 06. Jagged Array Manipulator

namespace _06.JaggedArrayManipulator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // read input
            int rows = int.Parse(Console.ReadLine());
            double[][] array = new double[rows][];
            for (int i = 0; i < rows; i++)
            {
                array[i] = Console.ReadLine().Split().Select(double.Parse).ToArray();
            }

            // analyze array
            for (int i = 1; i < array.GetLength(0); i++)
            {
                double[] previous = array[i - 1];
                double[] current = array[i];

                if (previous.Length == current.Length)
                {
                    for (int j = 0; j < previous.Length; j++)
                    {
                        array[i][j] *= 2;
                        array[i - 1][j] *= 2;
                    }
                }
                else
                {
                    for (int j = 0; j < previous.Length; j++)
                    {
                        array[i - 1][j] /= 2;
                    }

                    for ( int j = 0; j < current.Length; j++)
                    {
                        array[i][j] /= 2;
                    }
                }
            }

            // enter commands
            string command = string.Empty;
            while ((command = Console.ReadLine()) != "End")
            {
                string[] tokens = command.Split();
                if (tokens[0] == "Add")
                {
                    int row = int.Parse(tokens[1]);
                    int column = int.Parse(tokens[2]);
                    double value = double.Parse(tokens[3]);

                    if (row >= 0 && row < array.GetLength(0) &&
                        column >= 0 && column < array[row].Length)
                    {
                        array[row][column] += value;
                    }
                }
                else if (tokens[0] == "Subtract")
                {
                    int row = int.Parse(tokens[1]);
                    int column = int.Parse(tokens[2]);
                    double value = double.Parse(tokens[3]);

                    if (row >= 0 && row < array.GetLength(0) &&
                        column >= 0 && column < array[row].Length)
                    {
                        array[row][column] -= value;
                    }
                }
            }

            // print array
            for (int i = 0; i < array.GetLength(0); i++)
            {
                Console.WriteLine(string.Join(" ", array[i]));
            }
        }
    }
}
