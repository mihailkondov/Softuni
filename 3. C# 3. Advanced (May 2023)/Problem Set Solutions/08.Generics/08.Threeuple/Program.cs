namespace _08.Threeuple
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] tokens1 = Console.ReadLine()!.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToArray();
            string[] tokens2 = Console.ReadLine()!.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToArray();
            string[] tokens3 = Console.ReadLine()!.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToArray();

            Threeuple<string, string, string> t1 = new($"{tokens1[0]} {tokens1[1]}", tokens1[2], string.Join(" ", tokens1[3..]));
            Threeuple<string, int, bool> t2 = new(tokens2[0], int.Parse(tokens2[1]), tokens2[2] == "drunk");
            Threeuple<string, double, string> t3 = new(tokens3[0], double.Parse(tokens3[1]), tokens3[2]);

            Console.WriteLine(t1);
            Console.WriteLine(t2);
            Console.WriteLine(t3);
        }
    }
}
