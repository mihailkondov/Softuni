// 08. Ranking

namespace _08.Ranking
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, string> contests = new Dictionary<string, string>();

            string input = string.Empty;
            while ((input = Console.ReadLine()!) != "end of contests")
            {
                string[] inputArray = input
                    .Split(':', StringSplitOptions.RemoveEmptyEntries)
                    .Select(x => x.Trim())
                    .ToArray();

                if (inputArray.Length != 2)
                {
                    continue;
                }

                contests.Add(inputArray[0], inputArray[1]);
            }

            SortedDictionary<string, User> users = new SortedDictionary<string, User>();
            input = string.Empty;
            while ((input = Console.ReadLine()!) != "end of submissions")
            {
                string[] inputArray = input.Split("=>");

                // Check if contest is valid
                string contest = inputArray[0];
                if (contest != null && !contests.ContainsKey(contest))
                {
                    continue;
                }

                // Check if password is correct for the current contest
                string password = inputArray[1];
                if (password != null && contests[contest] != password)
                {
                    continue;
                }

                // Save user and contest results
                string username = inputArray[2];
                int points = int.Parse(inputArray[3]);

                if (!users.ContainsKey(username))
                {
                    User user = new User(username, contest, points);
                    users.Add(username, user);
                }
                else
                {
                    users[username].AddContest(contest, points);
                }
            }

            // Print contestant with most points
            User winner = users.OrderByDescending(kvp => kvp.Value.ContestResults.Values.Sum())
                .Select(kvp => kvp.Value)
                .First();
            Console.WriteLine($"Best candidate is {winner.Name} with total {winner.ContestResults.Values.Sum()} points.");

            // Print all contestants alphabetically with their participation results
            // ordered by points earned from most to least
            Console.WriteLine("Ranking:");
            foreach (var user in users)
            {
                Console.WriteLine(user.Key);
                foreach (var contest in user.Value.ContestResults.OrderByDescending(r => r.Value))
                {
                    Console.WriteLine($"#  {contest.Key} -> {contest.Value}");
                }
            }
        }
    }

    internal class User
    {
        public User(string name, string? contest, int? points)
        {
            Name = name;

            if (contest != null && points.HasValue)
                ContestResults.Add(contest, (int)points);
        }
        public string Name { get; set; }
        public Dictionary<string, int> ContestResults { get; set; } = new Dictionary<string, int>();

        public void AddContest(string contest, int points)
        {
            if (ContestResults.ContainsKey(contest))
            {
                if (ContestResults[contest] < points)
                {
                    ContestResults[contest] = points;
                }
            }
            else
            {
                ContestResults.Add(contest, points);
            }
        }
    }
}
