// 03. Maximum And Minimum Element

using System.Text;

namespace _03.MaximumAndMinimumElement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Stack<int> stack = new Stack<int>();
            int N = int.Parse(Console.ReadLine());

            for (int i = 0; i < N; i++)
            {
                int x = 0;
                int[] command = Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .Select(int.Parse)
                    .ToArray();
                int type = command[0];

                bool xValid = true;
                if (command.Length > 1)
                {
                    x = command[1];
                }

                switch (type)
                {
                    case 1:
                        if (x < 1 || x > 109)
                        {
                            continue;
                        }

                        stack.Push(x);
                        break;
                    case 2:
                        if (stack.Any())
                        {
                            stack.Pop();
                        }
                        break;
                    case 3:
                        if (stack.Any())
                        {
                            Console.WriteLine(stack.Max());
                        }
                        break;
                    case 4:
                        if (stack.Any())
                        {
                            Console.WriteLine(stack.Min());
                        }
                        break;
                    default:
                        continue;

                }
            }
            StringBuilder numbersSB = new StringBuilder();
            foreach (var item in stack)
            {
                numbersSB.Append(item).Append(',').Append(' ');
            }
            numbersSB.Remove(numbersSB.Length - 2, 2);
            string output = numbersSB.ToString();
            Console.WriteLine(output);
        }
    }
}