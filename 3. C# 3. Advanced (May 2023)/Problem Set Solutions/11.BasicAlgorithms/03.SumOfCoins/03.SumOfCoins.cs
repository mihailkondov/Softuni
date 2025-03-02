namespace SumOfCoins
{
    using System;
    using System.Collections.Generic;
    using System.Drawing;
    using System.Linq;

    public class StartUp
    {
        public static void Main(string[] args)
        {
            // Read input
            List<int> denominations = Console.ReadLine()
                .Split(", ", StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .OrderByDescending(x => x)
                .ToList();
            int desiredSum = int.Parse(Console.ReadLine());

            // Calculate
            Dictionary<int, int> coinQuantities = ChooseCoins(denominations, desiredSum);
            int coins = coinQuantities.Sum(kvp => kvp.Value);

            // Print result
            Console.WriteLine($"Number of coins to take: {coins}");
            foreach (KeyValuePair<int, int> kvp in coinQuantities)
            {
                if (kvp.Value > 0)
                    Console.WriteLine($"{kvp.Value} coin(s) with value {kvp.Key}");
            }
        }

        public static Dictionary<int, int> ChooseCoins(IList<int> coins, int targetSum)
        {
            Dictionary<int, int> coinQuantities = new Dictionary<int, int>();
            foreach (int denomination in coins)
            {
                coinQuantities.Add(denomination, 0);
                int rest = targetSum % denomination;
                coinQuantities[denomination] = (targetSum - rest) / denomination;
                targetSum = rest;
            }
            return coinQuantities;
        }
    }
}