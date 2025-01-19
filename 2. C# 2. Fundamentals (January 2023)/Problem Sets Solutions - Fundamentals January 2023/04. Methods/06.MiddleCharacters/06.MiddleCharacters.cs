// 06. Middle Characters

namespace _06.MiddleCharacters
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string userInput = Console.ReadLine();
            Middle(userInput);
        }

        private static void Middle(string input)
        {
            string output;
            int length = input.Length;
            if (length % 2 == 0)
            {
                string a = Char.ToString(input[length / 2 - 1]);
                string b = Char.ToString(input[length / 2]);
                Console.WriteLine($"{a}" + $"{b}");
            }
            else
            {
                output = Char.ToString(input[length / 2]);
                Console.WriteLine(output);
            }
        }
    }
}