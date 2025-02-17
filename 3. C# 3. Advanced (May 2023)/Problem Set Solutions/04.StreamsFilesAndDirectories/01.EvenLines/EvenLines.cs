// 01. Even Lines

namespace EvenLines
{
    using System;
    using System.IO;
    using System.Linq;

    public class EvenLines
    {
        static void Main()
        {
            string inputFilePath = @"..\..\..\text.txt";

            Console.WriteLine(ProcessLines(inputFilePath));
        }

        public static string ProcessLines(string inputFilePath)
        {
            // Read input
            StreamReader streamReader = new StreamReader(inputFilePath);
            string text = streamReader.ReadToEnd();
            streamReader.Close();

            // Reversing words and skipping every second sentence
            text = string.Join(Environment.NewLine, text
                .Split(Environment.NewLine)
                .Where((sentence, index) => index % 2 == 0)
                .Select(x =>
                    string.Join(' ', x
                      .Split(' ')
                      .Reverse()
                      .ToArray())
                    )
                .ToArray()
            );

            // Replace special characters
            string charactersToReplace = "-,.!?";
            text = new string(text.Select(c => charactersToReplace.Contains(c) ? '@' : c).ToArray());

            return text;
        }
    }
}
