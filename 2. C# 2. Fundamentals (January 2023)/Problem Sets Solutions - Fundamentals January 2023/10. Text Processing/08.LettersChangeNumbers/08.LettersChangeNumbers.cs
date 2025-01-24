// 08. Letters Change Numbers

namespace _08.LettersChangeNumbers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries);

            decimal sum = 0;
            foreach (string s in input) { 

                decimal number = decimal.Parse(s.Substring(1, s.Length - 2));
                char first = s.First();
                char last = s.Last();
                if (char.IsUpper(first))
                {
                    number /= (decimal)GetLetterPositionInAlphabet(first);
                }
                else
                {
                    number *= GetLetterPositionInAlphabet(first);
                }

                if (char.IsUpper(last))
                {
                    number -= GetLetterPositionInAlphabet(last);
                }
                else
                {
                    number += GetLetterPositionInAlphabet(last);
                }

                sum += number;
            }
            Console.WriteLine(Math.Round(sum, 2).ToString("F2"));
        }

        static int GetLetterPositionInAlphabet(char c)
        {
            c = char.ToLower(c);
            int result = c - 'a' + 1;
            return result;
        }
    }
}
