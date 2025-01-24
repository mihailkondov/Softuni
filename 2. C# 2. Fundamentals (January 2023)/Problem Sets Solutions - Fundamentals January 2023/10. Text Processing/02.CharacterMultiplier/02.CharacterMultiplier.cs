// 02. Character Multiplier

namespace _02.CharacterMultiplier
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split();
            int output = MultiplyChars(input);
            Console.WriteLine(output);
        }

        static int MultiplyChars(string[] input)
        {
            if (input[0].Length > input[1].Length)
            {
                string basket = input[0];
                input[0] = input[1];
                input[1] = basket;
            }

            //second is always longer
            char[] chars1 = input[0].ToCharArray();
            char[] chars2 = input[1].ToCharArray();
            int multiplications = chars1.Length;
            int sum = 0;

            for (int i = 0; i < multiplications; i++)
            {
                sum += (int)chars1[i] * (int)chars2[i];
            }

            for (int i = multiplications; i < chars2.Length; i++)
            {
                sum += (int)chars2[i];
            }

            return sum;
        }
    }
}