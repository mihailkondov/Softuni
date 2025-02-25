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
            var list = new CustomDoublyLinkedList<int>();
            string className = list.GetType().Name.Split("`")[0];
            Action<int> print = (int x) => Console.WriteLine($"    {x}");
            // Demo:
            Console.WriteLine($"Testing the {className} class:");
            Console.WriteLine("  Initial Count is " + list.Count);

            Console.WriteLine("  Populating list");

            list.AddFirst(2);
            list.AddFirst(1);
            list.AddLast(3);
            list.AddLast(4);
            list.ForEach(print);
            Console.WriteLine($"  Count is {list.Count}");
            Console.WriteLine();

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

            list.ForEach(print);
            Console.WriteLine("    Count is " + list.Count);
        }
    }
}
