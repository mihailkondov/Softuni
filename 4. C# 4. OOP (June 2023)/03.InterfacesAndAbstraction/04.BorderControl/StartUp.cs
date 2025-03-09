// 04. Border Control

namespace _04.BorderControl
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            List<string> idList = new List<string>();
            List<string> blackList = new List<string>();
            string input;
            while ((input = Console.ReadLine()!) != "End")
            {
                string[] data = input.Split(" ", StringSplitOptions.RemoveEmptyEntries);
                string id = data[data.Length - 1];
                idList.Add(id);
            }

            string fakeid = Console.ReadLine()!;
            int nSymbols = fakeid.Length;

            foreach (string id in idList)
            {
                if (id.EndsWith(fakeid))
                {
                    blackList.Add(id);
                }
            }

            foreach (string toBeExecuted in blackList)
            {
                Console.WriteLine(toBeExecuted);
            }
        }
    }
}