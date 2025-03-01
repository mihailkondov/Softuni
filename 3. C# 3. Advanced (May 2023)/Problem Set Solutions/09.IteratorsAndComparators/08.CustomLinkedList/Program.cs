namespace CustomDoublyLinkedList
{
    internal class Program
    {
        static void Main(string[] args)
        {
            CustomGenericListDemo();
        }

        static void CustomGenericListDemo()
        {
            //// Demo
            var list = new CustomDoublyLinkedList<int>();
            string className = list.GetType().Name.Split("`")[0];
            Action<int> print = (int x) => Console.WriteLine($"    {x}");
            Console.WriteLine($"Testing the {className} class:");

            // Count
            Console.WriteLine("  Initial Count is " + list.Count);

            // AddFirst, AddLast methods
            Console.WriteLine("  Populating list");

            list.AddFirst(2);
            list.AddFirst(1);
            list.AddLast(3);
            list.AddLast(4);
            list.ForEach(print);
            Console.WriteLine($"  Count is {list.Count}");
            Console.WriteLine();

            // RemoveFirst, RemoveLast methods
            Console.WriteLine("  Removing first element.");
            list.RemoveFirst();
            Console.WriteLine("  Removing last element:");
            list.RemoveLast();
            list.ForEach(print);
            Console.WriteLine("    Count is " + list.Count);
            Console.WriteLine("  Removing first element.");
            list.RemoveFirst();
            Console.WriteLine("  Removing last element:");
            list.RemoveLast();
            list.ForEach(print);

            list.AddFirst(1);
            list.RemoveFirst();

            // ForEach method
            list.ForEach(print);
            Console.WriteLine("    Count is " + list.Count);

            // Enumerator
            Console.WriteLine("  Testing enumerator:");
            Console.WriteLine($"    On an empty list: {string.Join(" ", list)}");
            list.AddLast(123);
            Console.WriteLine($"    On a list with one item: {string.Join(" ", list)}");
            list.AddLast(1234);
            Console.WriteLine($"    On a list with two items: {string.Join(" ", list)}");
            list.AddLast(12345);
            list.AddFirst(12);
            list.AddFirst(1);
            Console.WriteLine($"    On a list with {list.Count} items: {string.Join(" ", list)}");

            Console.WriteLine("    Trying a +1 transformation:");
            Console.Write("    ");
            foreach (var item in list)
            {
                Console.Write(item + 1 + " ");
            }
            Console.WriteLine();
        }
    }
}
