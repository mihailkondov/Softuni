// 10. ForceBook

// This solution is way more complicated than it should be, but it works. 
// I don't recommend learning from it.

// Useful test input:
/*
Side A | Guy 1
Side B | Guy 2
Side C | Guy 3
Side D | Guy 4
Side E | Guy 5
Guy 5 -> Side A
Side C | Guy 6
Side C | Guy 7
Guy 4 -> Side A
Guy 3 -> Side B
Lumpawaroo

*/

namespace _10.ForceBook
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, string> users = new Dictionary<string, string>(); // key = username, value = side
            string input = string.Empty;
            while ((input = Console.ReadLine()!) != "Lumpawaroo")
            {
                string[] inputArray = input.Split(" | ", StringSplitOptions.RemoveEmptyEntries);
                if (inputArray.Length == 2) // Side | Username
                {
                    string side = inputArray[0];
                    string username = inputArray[1];
                    if (!users.ContainsKey(username))
                    {
                        users.Add(username, side);
                    }
                }
                else if ((inputArray = input.Split(" -> ")).Length == 2)
                {
                    string username = inputArray[0];
                    string side = inputArray[1];
                    if (users.ContainsKey(username))
                    {
                        users[username] = side;
                    }
                    else
                    {
                        users.Add(username, side);
                    }
                    Console.WriteLine($"{username} joins the {side} side!");
                }
            }

            Dictionary<string, int> sidesFrequencies = new();
            foreach (KeyValuePair<string, int> side in from u in users
                                                       group u by u.Value into g
                                                       select new KeyValuePair<string, int>(g.Key, g.Count())
            )
            {
                sidesFrequencies.Add(side.Key, side.Value);
            }

            foreach (var side in sidesFrequencies
                .OrderByDescending(x => x.Value)
                .ThenBy(s => s.Key))
            {
                Console.WriteLine($"Side: {side.Key}, Members: {sidesFrequencies[side.Key]}");
                foreach (KeyValuePair<string, string> user in users.Where(u => u.Value == side.Key).OrderBy(x => x.Key))
                {
                    Console.WriteLine($"! {user.Key}");
                }
            }
        }
    }
}
