// 03. Periodic Table

namespace _03.PeriodicTable
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SortedSet<string> elements = new SortedSet<string>();
            int N = int.Parse(Console.ReadLine());
            for (int i = 0; i < N; i++)
            {
                string[] compound = Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .ToArray();

                foreach (string compoundItem in compound)
                {
                    elements.Add(compoundItem);
                }
            }
            Console.WriteLine(string.Join(' ', elements));
        }
    }
}