// 06. Replace Repeating Chars

using System.Text;

namespace _06.ReplaceRepeatingChars
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            StringBuilder output = new StringBuilder();
            output.Append(input[0]);
            int j = 1;
            for (int i = 1; i < input.Length; i++)
            {
                char current = input[i];
                if (output[j - 1] != current)
                {
                    output.Append(current);
                    j++;
                }
            }
            Console.WriteLine(output);
        }
    }
}