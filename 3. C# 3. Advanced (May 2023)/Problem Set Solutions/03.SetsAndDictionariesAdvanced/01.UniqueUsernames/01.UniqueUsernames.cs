// 01. Unique Usernames

namespace _01.UniqueUsernames
{
    internal class Program
    {
        static void Main(string[] args)
        {
            HashSet<string> set = new HashSet<string>();
            int N = int.Parse(Console.ReadLine());
            for (int i = 0; i < N; i++)
            {
                set.Add(Console.ReadLine());
            }

            foreach (string s in set)
            {
                Console.WriteLine(s);
            }
        }
    }
}