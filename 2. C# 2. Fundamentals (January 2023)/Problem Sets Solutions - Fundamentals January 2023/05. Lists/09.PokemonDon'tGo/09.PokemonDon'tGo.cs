// 09. Pokemon Don't Go

namespace _09.PokemonDon_tGo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<long> integers = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(long.Parse)
                .ToList();
            long removedSum = 0;
            long current;
            while (integers.Count > 0)
            {
                int index = int.Parse(Console.ReadLine());
                if (index < 0)
                {
                    index = 0;
                    current = integers[index];
                    integers[index] = integers[integers.Count - 1];
                }
                else if (index > integers.Count - 1)
                {
                    index = integers.Count - 1;
                    current = integers[index];
                    integers[index] = integers[0];
                }
                else
                {
                    current = integers[index];
                    integers.RemoveAt(index);
                }

                removedSum += current;

                for (int i = 0; i < integers.Count; i++)
                {
                    if (integers[i] <= current)
                    {
                        integers[i] += current;
                    }
                    else
                    {
                        integers[i] -= current;
                    }
                }
            }
            Console.WriteLine(removedSum);
        }
    }
}