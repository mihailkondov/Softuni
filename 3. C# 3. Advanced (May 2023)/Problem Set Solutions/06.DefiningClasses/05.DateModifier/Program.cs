namespace _05.DateModifier
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            string date1 = Console.ReadLine();
            string date2 = Console.ReadLine();
            int diff = DateModifier.DateDiff(date1, date2);
            Console.WriteLine(diff);
        }
    }
}
