namespace SetCover
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    class StartUp
    {
        static void Main(string[] args)
        {
            int[] universe = Console.ReadLine().Split(", ").Select(int.Parse).ToArray();
            int n = int.Parse(Console.ReadLine());
            int[][] sets = new int[n][];
            for (int i = 0; i < n; i++)
            {
                int[] set = Console.ReadLine().Split(", ").Select(int.Parse).ToArray();
                sets[i] = set;
            }

            List<int[]> chosenSets = ChooseSets(sets.ToList(), universe.ToList());

            Console.WriteLine($"Sets to take ({chosenSets.Count}):");
            foreach (var set in chosenSets)
            {
                Console.WriteLine($"{{ {string.Join(", ", set)} }}");
            }
        }

        public static List<int[]> ChooseSets(IList<int[]> sets, IList<int> universe)
        {
            var chosenSets = new List<int[]>();
            while (universe.Count > 0)
            {
                var chosenSet =
                    sets
                    .OrderByDescending(set => set.ToList()
                        .Where(i => universe.Contains(i))
                        .Count()
                    ).FirstOrDefault();

                foreach (int item in chosenSet)
                {
                    universe.Remove(item);
                }
                chosenSets.Add(chosenSet);
            }

            return chosenSets;
        }
    }
}
