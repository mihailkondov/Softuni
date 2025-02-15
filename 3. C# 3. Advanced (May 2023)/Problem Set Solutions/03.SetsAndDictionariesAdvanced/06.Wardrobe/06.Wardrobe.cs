// 06. Wardrobe

namespace _06.Wardrobe
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, Dictionary<string, int>> wardrobe = new Dictionary<string, Dictionary<string, int>>();
            int n = int.Parse(Console.ReadLine());
            for (int i = 0; i < n; i++)
            {
                string[] input = Console.ReadLine().Split(" -> ").ToArray(); // Blue -> dress,jeans,hat
                string[] clothing = input[1].Split(',').ToArray();
                string color = input[0];

                foreach (string type in clothing)
                {
                    if (!wardrobe.ContainsKey(color))
                    {
                        wardrobe.Add(color, new Dictionary<string, int>());
                    }

                    if (!wardrobe[color].ContainsKey(type))
                    {
                        wardrobe[color].Add(type, 1);
                    }
                    else
                    {
                        wardrobe[color][type]++;
                    }
                }
            }

            string[] looking = Console.ReadLine().Split(' ').ToArray();
            string colorNeeded = looking[0];
            string clotpiceNeeded = looking[1];

            foreach (var color in wardrobe)
            {
                Console.WriteLine($"{color.Key} clothes:");
                foreach (var type in color.Value)
                {
                    string found = "";
                    if (color.Key == colorNeeded && type.Key == clotpiceNeeded)
                    {
                        found = " (found!)";
                    }
                    Console.WriteLine($"* {type.Key} - {type.Value}" + found);
                }
            }
        }
    }
}