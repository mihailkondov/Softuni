// 03. Extract File

namespace _03.ExtractFile
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine().Split('\\');
            int length = input.Length;
            string[] words = input[length - 1].Split('.');
            string filename = words[0];
            string extension = words[1];
            Console.WriteLine($"File name: {filename}");
            Console.WriteLine($"File extension: {extension}");
        }
    }
}