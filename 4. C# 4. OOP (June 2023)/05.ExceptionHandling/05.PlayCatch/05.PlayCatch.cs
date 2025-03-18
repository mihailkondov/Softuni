// 05. Play Catch

using System.Text;
namespace _05.PlayCatch
{
    public class Program
    {
        public static void Main()
        {
            int[] ints = Console.ReadLine()!.Split(' ').Select(int.Parse).ToArray();
            int exceptionsCaught = 0;
            while (exceptionsCaught < 3)
            {
                string input = Console.ReadLine()!;
                try
                {
                    string[] tokens = input.Split(' ');
                    switch (tokens[0])
                    {
                        case "Replace":
                            int index = int.Parse(tokens[1]);
                            int element = int.Parse(tokens[2]);
                            Replace(ints, index, element);
                            break;
                        case "Print":
                            int startIndex = int.Parse(tokens[1]);
                            int endIndex = int.Parse(tokens[2]);
                            string output = GeneratePrintOutput(ints, startIndex, endIndex);
                            Console.WriteLine(output);
                            break;
                        case "Show":
                            int showIndex = int.Parse(tokens[1]);
                            int showElement = GetElementFromArray(ints, showIndex);
                            Console.WriteLine(showElement);
                            break;
                    }
                }
                catch (Exception ex)
                when (ex is ArgumentNullException || ex is FormatException || ex is OverflowException)
                {
                    Console.WriteLine("The variable is not in the correct format!");
                    exceptionsCaught++;
                }
                catch (IndexOutOfRangeException)
                {
                    Console.WriteLine("The index does not exist!");
                    exceptionsCaught++;
                }
            }

            Console.WriteLine(string.Join(", ", ints));
        }

        public static void Replace(int[] ints, int index, int element)
        {
            ints[index] = element;
        }

        public static string GeneratePrintOutput(int[] ints, int startIndex, int endIndex)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = startIndex; i < endIndex; i++)
            {
                sb.Append($"{ints[i]}, ");
            }
            sb.Append(ints[endIndex]);
            return sb.ToString();
        }

        public static int GetElementFromArray(int[] ints, int index)
        {
            int element = ints[index];
            return element;
        }
    }
}
