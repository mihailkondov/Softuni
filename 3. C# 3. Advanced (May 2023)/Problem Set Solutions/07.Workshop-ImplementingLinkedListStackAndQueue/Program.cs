namespace _07.Workshop_ImplementingLinkedListStackAndQueue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // list can be both CustomList and CustomListButBetter and this program will work just fine.
            var list = new CustomListButBetter();

            // Demo:
            Console.WriteLine("Testing the list:");
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
    }
}
