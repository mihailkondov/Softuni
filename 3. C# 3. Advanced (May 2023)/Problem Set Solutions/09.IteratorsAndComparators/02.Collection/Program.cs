namespace _02.Collection
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ListyIterator<string> listyIterator = new ListyIterator<string>(new List<string>());
            string input = Console.ReadLine()!;
            listyIterator = new ListyIterator<string>(input!.Split().Skip(1).ToList());

            while ((input = Console.ReadLine()!) != "END")
            {
                if (input == "Move")
                {
                    Console.WriteLine(listyIterator.Move());
                }
                else if (input == "Print")
                {
                    try
                    {
                        listyIterator.Print();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                }
                else if (input == "PrintAll")
                {
                    foreach (var item in listyIterator)
                    {
                        Console.Write($"{item} ");
                    }
                    Console.WriteLine();
                }
                else if (input == "HasNext")
                {
                    Console.WriteLine(listyIterator.HasNext());
                }
            }
        }
    }
}
