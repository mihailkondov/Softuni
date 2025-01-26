namespace _01.StacksAndQueues
{
    internal class StacksAndQueues
    {
        static void Main(string[] args)
        {
            int[] parameters = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries) 
                .Select(int.Parse)
                .ToArray();
            if (parameters.Length != 3)
                return;

            int[] numbers = Console.ReadLine()
                .Split()
                .Select(int.Parse)
                .ToArray();
            if (numbers == null)
                return;

            int N = parameters[0];
            int S = parameters[1];
            int X = parameters[2];

            Stack<int> stack = new Stack<int>(numbers);

            for (int i = 0; i < S; i++)
            {
                stack.Pop();
            }

            if (stack.Contains(X))
            {
                Console.WriteLine("true");
            }
            else if (stack.Any() == false)
            {
                Console.WriteLine(0);
            }
            else
            {
                Console.WriteLine(stack.Min());
            }
        }
    }
}