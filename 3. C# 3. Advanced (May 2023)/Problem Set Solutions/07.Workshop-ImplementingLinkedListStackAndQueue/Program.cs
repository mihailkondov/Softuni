
using System.Runtime.Serialization;
using System.Text;

namespace _07.Workshop_ImplementingLinkedListStackAndQueue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // CustomListDemo();
            // CustomListButBetterDemo();
            // CustomStackDemo();
            CustomQueueDemo();

        }


        static void CustomListDemo()
        {
            var list = new CustomList();

            // Demo:
            Console.WriteLine("Testing the CustomList class:");
            list.Add(1);
            list.Add(2);
            list.Add(3);
            list.Add(4);
            list.Print(2);
            Console.WriteLine($"  Count is {list.Count}");
            Console.WriteLine();

            Console.WriteLine("  Removing element at position 0");
            list.RemoveAt(0);
            bool contains1 = list.Contains(1);
            Console.WriteLine($"  List contains 1: {contains1}");
            list.Print(2);
            Console.WriteLine();
            Console.WriteLine("  Removing last index:");
            list.RemoveAt(list.Count - 1);
            list.Print(2);

            Console.WriteLine();
            Console.WriteLine("  Swapping positions 0 and 1");
            list.Swap(0, 1);
            list.Print(2);
        }
        static void CustomListButBetterDemo()
        {
            var list = new CustomListButBetter();

            // Demo:
            Console.WriteLine("Testing the CustomListButBetter class:");
            list.Add(1);
            list.Add(2);
            list.Add(3);
            list.Add(4);
            list.Print(2);
            Console.WriteLine($"  Count is {list.Count}");
            Console.WriteLine();

            Console.WriteLine("  Removing element at position 0");
            list.RemoveAt(0);
            bool contains1 = list.Contains(1);
            Console.WriteLine($"  List contains 1: {contains1}");
            list.Print(2);
            Console.WriteLine();
            Console.WriteLine("  Removing last index:");
            list.RemoveAt(list.Count - 1);
            list.Print(2);

            Console.WriteLine();
            Console.WriteLine("  Swapping positions 0 and 1");
            list.Swap(0, 1);
            list.Print(2);
        }
        static void CustomStackDemo()
        {
            Console.WriteLine("Starting custom stack demo:");
            Console.WriteLine("  Calling constructor...");
            CustomStack stack = new CustomStack();
            Console.WriteLine($"    Created an empty stack {stack.Count} elements.");
            Console.WriteLine("  Attempting to print a stack with 0 elements:");
            Console.WriteLine(stack.ToString(4));

            int[] elements = new int[] { 1, 2, 3, 4, 5, 6, 7 };
            Console.WriteLine($"  Populating stack with elements {string.Join(", ", elements)}");
            foreach (int element in elements)
            {
                stack.Push(element);
            }
            Console.WriteLine($"  Printing stack with count {stack.Count}:");
            Console.WriteLine(stack.ToString(4));

            Console.WriteLine("  Peeking top element:");
            Console.WriteLine($"    {stack.Peek()}");


            Console.WriteLine("  Print f(x) = 2 * x");
            Action<int> action = (int x) => { Console.WriteLine($"    {(2 * x)}"); };
            stack.ForEach(action);


            Console.WriteLine("  Popping all elements:");
            for (int i = stack.Count; i > 0; i--)
            {
                int poppedElement = stack.Pop();
                Console.WriteLine($"    Returned element: {poppedElement}. Count is now {stack.Count}.");
            }

        }
        static void CustomQueueDemo()
        {
            // This is to make printed things look good
            int paddingSpacesCount = 2;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < paddingSpacesCount; i++)
            {
                sb.Append(' ');
            }
            string padding = sb.ToString();
            Action<int> printElements = (int x) => { Console.WriteLine($"{padding}{padding}{x}"); };


            // Actual demo begins here
            Console.WriteLine("Queue demo:");
            Console.WriteLine($"{padding}Creating queue");
            CustomQueue queue = new CustomQueue();
            int[] elements = new int[] { 1, 2, 3, 4, 5, 6, 7 };
            foreach (int element in elements)
            {
                queue.Enqueue(element);
            }
            queue.ForEach(printElements);
            Console.WriteLine($"{padding}Dequeueing 1 element: {queue.Dequeue()}");
            int[] newElements = new int[] { 8, 9 };

            Console.WriteLine($"{padding}Queueing two elements: {newElements[0]}, {newElements[1]}");
            queue.Enqueue(newElements[0]);
            queue.Enqueue(newElements[1]);
            queue.ForEach(printElements);

            Console.WriteLine($"{padding}Peek returns this value:");
            Console.WriteLine($"{padding}{padding}{queue.Peek()}");

            Console.WriteLine($"{padding}Current capacity is {queue.Capacity}. Deleting 7 elements to cause shrinkage. Printing queue contents:");
            for (int i = 0; i < 7; i++)
            {
                queue.Dequeue();
            }
            queue.ForEach(printElements);
            Console.WriteLine($"{padding}{padding}Capacity is now {queue.Capacity}");

            Console.WriteLine($"{padding}Enqueueing \"100\" and dequeueing one element. ");
            queue.Enqueue(100);
            Console.WriteLine($"{padding}{padding}Dequeue returned: {queue.Dequeue()}");
            Console.WriteLine($"{padding}Enqueueing \"200\", \"300\" and \"400\" to test expansion when startindex is not 0.");
            queue.Enqueue(200);
            queue.Enqueue(300);
            queue.Enqueue(400);
            queue.ForEach(printElements);

            Console.WriteLine($"{padding}Clearing queue...");
            queue.Clear();
            queue.ForEach(printElements);
            Console.WriteLine("  End of queue demo");
            Console.WriteLine();
        }
    }
}
