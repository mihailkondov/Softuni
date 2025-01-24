// 04. Caesar Cipher

namespace _04.CaesarCipher
{
    internal class Program
    {
        static void Main(string[] args)
        {
            char[] input = Console.ReadLine().ToCharArray();
            for (int i = 0; i < input.Length; i++)
            {
                int a = (int)input[i];
                a += 3;
                input[i] = (char)a;
            }

            Console.WriteLine(string.Join("", input));
        }
    }
}