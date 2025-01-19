// 03.Characters In Range

namespace _3.CharactersInRange
{
    internal class Program
    {
        static void Main(string[] args)
        {
            char a = Console.ReadLine().ToCharArray()[0];
            char b = Console.ReadLine().ToCharArray()[0];
            PrintChars(a, b);
        }
        static void PrintChars(char a, char b)
        {
            int start;
            int end;
            if (a > b)
            {
                start = (char)b + 1;
                end = (char)a;
            }
            else
            {
                start = (char)a + 1;
                end = (char)b;
            }
            while (start < end)
            {
                Console.Write($"{(char)start} ");
                start++;
            }
        }
    }
}