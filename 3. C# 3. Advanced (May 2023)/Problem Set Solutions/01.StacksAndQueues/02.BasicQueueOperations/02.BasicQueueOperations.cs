// 02. Basic Queue Operations

namespace _02._Queue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] parameters = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .ToArray();
            int[] numbers = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .ToArray();
            int N = parameters[0];
            int S = parameters[1];
            int X = parameters[2];
            Queue<int> q = new Queue<int>(numbers);

            for (int i = 0; i < S; i++)
            {
                q.Dequeue();
            }

            if (q.Contains(X))
            {
                Console.WriteLine("true");
            }
            else if (!q.Any())
            {
                Console.WriteLine("0");
            }
            else
            {
                Console.WriteLine(q.Min());
            }
        }
    }
}