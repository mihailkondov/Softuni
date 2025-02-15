// 09. SoftUni Exam Results

namespace _09.SoftUniExamResults
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, User> users = new Dictionary<string, User>();
            Dictionary<string, int> languageFrequency = new Dictionary<string, int>();
            string input = string.Empty;
            while ((input = Console.ReadLine()) != "exam finished")
            {
                string[] inputArray = input.Split('-');
                string username = inputArray[0];
                if (inputArray[1] == "banned")
                {
                    if (users.ContainsKey(username))
                    {
                        users[username].Banned = true;
                    }
                }
                else
                {
                    string language = inputArray[1];
                    int points = int.Parse(inputArray[2]);
                    if (!users.ContainsKey(username))
                    {
                        users.Add(username, new User(username));
                    }

                    if (!users[username].Submissions.ContainsKey(language))
                    {
                        users[username].Submissions.Add(language, points);
                    }
                    else
                    {
                        users[username].Submissions[language] = Math.Max(users[username].Submissions[language], points);
                    }

                    if (!languageFrequency.ContainsKey(language))
                    {
                        languageFrequency[language] = 1;
                    }
                    else
                    {
                        languageFrequency[language]++;
                    }

                }
            }

            // Print Results
            Console.WriteLine("Results:");
            // print each of the participants, ordered descending by their max points, then by username
            foreach (User user in
                users.Values
                    .Where(u => u.Banned == false)
                    .OrderByDescending(u => u.Submissions.Values.Max())
                    .ThenBy(u => u.Name)
            )
            {
                Console.WriteLine($"{user.Name} | {user.Submissions.Values.Max()}");
            }

            // print each language, used in the exam,
            // ordered descending by total submission count and then by language name
            Console.WriteLine("Submissions:");
            foreach (KeyValuePair<string, int> language in
                languageFrequency.OrderByDescending(kvp => kvp.Value)
                    .ThenBy(kvp => kvp.Key)
            )
            {
                Console.WriteLine($"{language.Key} - {language.Value}");
            }
        }
    }

    internal class User
    {
        public User(string name)
        {
            Name = name;
        }
        public string Name { get; set; }
        public Dictionary<string, int> Submissions { get; set; } = new Dictionary<string, int>();
        public bool Banned { get; set; } = false;
    }
}
