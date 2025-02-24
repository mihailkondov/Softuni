namespace _05.GenericCountMethodStrings
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<string> list = new List<string>();
            int n = int.Parse(Console.ReadLine());
            for (int i = 0; i < n; i++)
            {
                list.Add(Console.ReadLine());
            }
            string element = Console.ReadLine();
            int output = CountGreaterThan(list, element);
            Console.WriteLine(output);
        }

        static int CountGreaterThan<T>(List<T> list, T element) where T : IComparable<T>
        {
            int count = 0;
            foreach (T listEntry in list)
            {
                int diff = listEntry.CompareTo(element);
                if ( diff > 0)
                {
                    count++;
                }
            }
            return count;
        }
    }
}
