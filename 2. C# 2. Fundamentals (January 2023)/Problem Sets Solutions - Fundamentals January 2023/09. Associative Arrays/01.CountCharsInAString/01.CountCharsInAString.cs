// Associative Arrays
// 01. Count Cars In A String

namespace _01.CountCarsInAString
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<char, int> characterOccurances = new Dictionary<char, int>();
            string input = Console.ReadLine();
            string[] words = input.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToArray();
            foreach (var word in words)
            {
                char[] chars = word.ToCharArray();
                foreach (char x in chars)
                {
                    if (!characterOccurances.ContainsKey(x))
                    {
                        characterOccurances.Add(x, 0);
                    }
                    characterOccurances[x]++;
                }
            }

            foreach (var word in characterOccurances)
            {
                Console.WriteLine($"{word.Key} -> {word.Value}");
            }
        }
    }
}