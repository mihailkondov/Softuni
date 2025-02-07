namespace _04.FastFood
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int stock = int.Parse(Console.ReadLine());
            Queue<int> queue = new(Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .ToArray());

            if (queue.Any())
            {
                Console.WriteLine(queue.Max());
            }

            while (queue.Any())
            {
                stock -= queue.Peek();
                if (stock < 0)
                {
                    break;
                }
                queue.Dequeue();
            }

            if (queue.Any())
            {
                Console.WriteLine($"Orders left: {string.Join(" ", queue)}");
            }
            else
            {
                Console.WriteLine("Orders complete");
            }
        }
    }
}