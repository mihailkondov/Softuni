// 09. Simple Text Editor

namespace _9.SimpleTextEditor
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool debugging = false;

            // 1 append(x); 2 erease(n-x); 3 return(i); 4 undo
            int n = int.Parse(Console.ReadLine());
            string text = string.Empty;
            Stack<List<char>> historyStack = new Stack<List<char>>();

            List<char> list = new List<char>();
            foreach (char c in text)
            {
                list.Add(c);
            }
            historyStack.Push(list);

            for (int i = 0; i < n; i++)
            {
                string[] cmdArgs = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries);
                string command = cmdArgs[0];
                if (command == "1") //append
                {
                    string message = cmdArgs[1];
                    List<char> copyLast = new List<char>();
                    // create a copy of the last state
                    foreach (char c in historyStack.Peek())
                    {
                        copyLast.Add(c);
                    }
                    foreach (char c in message)
                    {
                        copyLast.Add(c);
                    }
                    historyStack.Push(copyLast);
                }
                else if (command == "2") // erease last x elements from the text
                {
                    int x = int.Parse(cmdArgs[1]);
                    List<char> copyLast = new List<char>();
                    // create a copy of the last state
                    foreach (char c in historyStack.Peek())
                    {
                        copyLast.Add(c);
                    }

                    // remove last x elements
                    copyLast.RemoveRange(copyLast.Count - x, x);

                    // add to history
                    historyStack.Push(copyLast);
                }
                else if (command == "3") // return index
                {
                    int index = int.Parse(cmdArgs[1]);
                    Console.WriteLine(historyStack.Peek()[index - 1]);
                }
                else if (command == "4")
                {
                    historyStack.Pop();
                }

                if (debugging)
                {
                    Stack<List<char>> bucket = new Stack<List<char>>();
                    int j = 0;
                    Console.WriteLine("Current contents:");
                    while (historyStack.Any())
                    {
                        List<char> currentWord = historyStack.Pop();
                        Console.WriteLine($"{j++}: {string.Join("", currentWord)}");
                        bucket.Push(currentWord);
                    }

                    // return entries
                    while (bucket.Any())
                    {
                        historyStack.Push(bucket.Pop());
                    }
                }
            }
        }
    }
}