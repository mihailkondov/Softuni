// 02. Sets Of Elements

namespace _02.SetsOfElements
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] ints = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
            int n = ints[0];
            int m = ints[1];

            HashSet<int> setN = new HashSet<int>();
            HashSet<int> setM = new HashSet<int>();

            for (int i = 0; i < n; i++)
            {
                setN.Add(int.Parse(Console.ReadLine()));
            }

            for (int i = 0; i < m; i++)
            {
                setM.Add(int.Parse(Console.ReadLine()));
            }

            foreach (int i in setN)
            {
                if (setM.Contains(i))
                {
                    Console.Write($"{i} ");
                }
            }
        }
    }
}