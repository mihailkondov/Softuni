namespace _08.BalancedParenthesis
{
    internal class Program
    {
        static void Main(string[] args)
        {
            char[] chars = Console.ReadLine().ToCharArray();
            Stack<char> stack = new Stack<char>();
            bool balanced = true;

            foreach (char c in chars)
            {
                if (c == '(' || c == '[' || c == '{')
                {
                    stack.Push(c);
                }
                else
                {
                    if (!stack.Any())
                    {
                        balanced = false;
                        break;
                    }

                    if ((stack.Peek() == '(' && c == ')') || (stack.Peek() == '[' && c == ']') || (stack.Peek() == '{' && c == '}'))
                    {
                        stack.Pop();
                    }
                    else
                    {
                        balanced = false;
                    }
                }
            }

            if (stack.Any())
            {
                balanced = false;
            }

            PrintBalanced(balanced);
        }

        private static void PrintBalanced(bool balanced)
        {
            if (balanced)
            {
                Console.WriteLine("YES");
            }
            else
            {
                Console.WriteLine("NO");
            }
        }
    }
}