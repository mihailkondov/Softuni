// 05. Count Symbols

namespace _05.CountSymbols
{
    internal class Program
    {
        static void Main(string[] args)
        {
            char[] chars = Console.ReadLine().ToCharArray();
            SortedDictionary<char, int> freq = new SortedDictionary<char, int>();

            foreach (char c in chars)
            {
                if (!freq.ContainsKey(c))
                {
                    freq.Add(c, 1);
                }
                else
                {
                    freq[c]++;
                }
            }

            foreach (var kvp in freq)
            {
                Console.WriteLine($"{kvp.Key}: {kvp.Value} time/s");
            }
        }
    }
}