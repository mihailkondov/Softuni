namespace _03.Stack;

internal class Program
{
    static void Main(string[] args)
    {
        string input = string.Empty;
        CustomStack<int> stack = new CustomStack<int>();
        while ((input = Console.ReadLine()) != "END")
        {
            if (input == "Pop")
            {
                try
                {
                    stack.Pop();
                }
                catch (InvalidOperationException ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            else
            {
                var command = input!.Split(' ', 2);
                if (command[0] != "Push")
                    continue;

                int[] arguments = command[1]
                    .Split(", ", StringSplitOptions.RemoveEmptyEntries)
                    .Select(int.Parse)
                    .ToArray();

                foreach (int arg in arguments)
                {
                    stack.Push(arg);
                }
            }
        }

        IEnumerator<int> customStackIterator = stack.GetEnumerator();
        while (customStackIterator.MoveNext())
        {
            Console.WriteLine(customStackIterator.Current);
        }

        customStackIterator.Reset();
        while (customStackIterator.MoveNext())
        {
            Console.WriteLine(customStackIterator.Current);
        }

    }
}
