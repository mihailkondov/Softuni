// 02. Line Numbers

namespace LineNumbers
{
    using System.IO;
    using System.Linq;

    public class LineNumbers
    {
        static void Main()
        {
            string inputFilePath = @"..\..\..\text.txt";
            string outputFilePath = @"..\..\..\output.txt";

            ProcessLines(inputFilePath, outputFilePath);
        }

        public static void ProcessLines(string inputFilePath, string outputFilePath)
        {
            FileStream newFile = File.Create(@"..\..\..\output.txt");
            newFile.Close();

            using (StreamReader inputStreamReader = new StreamReader(inputFilePath))
            {
                using (StreamWriter outputStreamWriter = new StreamWriter(outputFilePath))
                {
                    int lineCount = 0;
                    string line;
                    while ((line = inputStreamReader.ReadLine()) != null)
                    {
                        lineCount++;
                        int numberOfLetters = line.Where(c => char.IsLetter(c)).Count();
                        int numberOfPunctuationMarks = line.Where(c => char.IsPunctuation(c)).Count();
                        string newLine =
                            $"Line {lineCount}: "
                            + line
                            + $" ({numberOfLetters})"
                            + $"({numberOfPunctuationMarks})";
                        outputStreamWriter.WriteLine(newLine);
                    }
                }
            }
        }
    }
}
