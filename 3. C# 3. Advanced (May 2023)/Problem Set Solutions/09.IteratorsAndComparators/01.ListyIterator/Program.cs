namespace _09.IteratorsAndComparators
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ListyIterator<string> listyIterator = new ListyIterator<string>(new List<string>());
            string input = string.Empty;
            while ((input = Console.ReadLine()!) != "END")
            {
                try
                {
                    if (input == "Move")
                    {
                        Console.WriteLine(listyIterator.Move());
                    }
                    else if (input == "Print")
                    {
                        listyIterator.Print();
                    }
                    else if (input == "HasNext")
                    {
                        Console.WriteLine(listyIterator.HasNext());
                    }
                    else
                    {
                        var items = input!
                            .Split(" ", StringSplitOptions.RemoveEmptyEntries)
                            .ToArray();
                        if (items[0] != "Create")
                        {
                            Console.WriteLine("Possible commands: ");
                            Console.WriteLine("Create {item1 item2 item3 ...}");
                            Console.WriteLine("Move");
                            Console.WriteLine("Print");
                            Console.WriteLine("HasNext");
                            continue;
                        }

                        ICollection<string> list = new List<string>(items[1..]);
                        listyIterator = new ListyIterator<string>(list);
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            }
        }
    }
}
