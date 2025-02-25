namespace _06.GenericCountMethodDoubles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<double> list = new List<double>();
            int n = int.Parse(Console.ReadLine());
            for (int i = 0; i < n; i++)
            {
                list.Add(double.Parse(Console.ReadLine()));
            }
            double element = double.Parse(Console.ReadLine());
            int output = CountGreaterThan(list, element);
            Console.WriteLine(output);
        }

        static int CountGreaterThan<T>(List<T> list, T element) where T : IComparable<T>
        {
            int count = 0;
            foreach (T listEntry in list)
            {
                int diff = listEntry.CompareTo(element);
                if (diff > 0)
                {
                    count++;
                }
            }
            return count;
        }
    }
}
