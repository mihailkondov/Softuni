using System.Text.RegularExpressions;

namespace _05.NetherRealms
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            string[] nameArray = Regex.Split(input, @"\s*,\s*")
                .OrderBy(c => c)
                .ToArray();

            foreach (string name in nameArray)
            {
                // Calculate Health
                string chars = string.Concat(Regex.Matches(name, @"[^\+\-\/\*\d\.]"));
                int totalHealth = chars.Sum(c => (int)c);

                // Calculate damage
                double[] numbers = Regex.Matches(name, @"[-+]?\d*\.?\d+")
                    .Select(d => double.Parse(d.ToString()))
                    .ToArray();

                int doublings = Regex.Matches(name, @"\*").Count();
                int halvings = Regex.Matches(name, @"\/").Count();

                double damage = numbers.Sum();
                damage = damage * Math.Pow(2, doublings - halvings);

                // Print ouput
                Console.WriteLine($"{name} - {totalHealth} health, {damage:F2} damage");
            }
        }
    }
}
