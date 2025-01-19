// 02.Vowels Count

namespace _02.VowelsCount
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine().ToLower();
            int numberOfVowels = Vowels(input);
            Console.WriteLine(numberOfVowels);
        }
        static int Vowels(string input)
        {
            int numberOfVowels = 0;
            char[] chars = input.ToCharArray();
            foreach (var letter in chars)
            {
                if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'u' || letter == 'o')
                {
                    numberOfVowels++;
                }
            }
            return numberOfVowels;
        }
    }
}