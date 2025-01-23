// 02. A Miner Task

namespace _2.AMinerTask
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, int> mining = new Dictionary<string, int>();
            string input;
            while ((input = Console.ReadLine()) != "stop")
            {
                string res = input;
                int quantity = int.Parse(Console.ReadLine());
                if (!mining.ContainsKey(res))
                {
                    mining[res] = 0;
                }
                mining[res] += quantity;
            }

            foreach (var instance in mining)
            {
                Console.WriteLine($"{instance.Key} -> {instance.Value}");
            }
        }
    }
}