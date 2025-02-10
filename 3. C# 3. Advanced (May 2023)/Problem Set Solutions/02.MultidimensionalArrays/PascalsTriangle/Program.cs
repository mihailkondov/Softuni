namespace PascalsTriangle
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter number (integer) of rows for your Pascal's triangle:");
            int rows = int.Parse(Console.ReadLine());

            int[][] triangle = new int[rows][];
            if (rows > 0)
            {
                triangle[0] = new int[1] { 1 };
            }

            if (rows > 1)
            {
                triangle[1] = new int[2] { 1, 1 };
            }

            for (int i = 2; i < rows; i++)
            {
                triangle[i] = new int[i + 1];
                triangle[i][0] = 1;
                triangle[i][i] = 1;
                for (int j = 1; j < i; j++)
                {
                    triangle[i][j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
                }
            }

            // Calculate padding to make the pyramid look nice
            int max = triangle[rows - 1][rows / 2];
            int digits = 1;
            int currentMagnitude = max;
            while ((currentMagnitude = currentMagnitude / 10) > 0)
            {
                digits++;
            }

            // Print pyramid
            foreach (int[] row in triangle)
            {
                Console.WriteLine(
                    string.Join(
                        " ",
                        row.Select(i => i.ToString().PadLeft(digits, ' '))
                    )
                );
            }
        }
    }
}
