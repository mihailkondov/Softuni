// 05. Teamwork Projects

namespace _05.TeamworkProjects
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int teamsCount = int.Parse(Console.ReadLine()!);
            List<Team> teams = new();

            // Create teams
            for (int i = 0; i < teamsCount; i++)
            {
                string[] info = Console.ReadLine().Split('-');
                string teamCreator = info[0];
                string teamName = info[1];

                if (teams.Any(t => t.Name == teamName))
                {
                    Console.WriteLine($"Team {teamName} was already created!");
                }
                else if (teams.Any(t => t.Creator == teamCreator))
                {
                    Console.WriteLine($"{teamCreator} cannot create another team!");
                }
                else
                {
                    Team team = new Team(name: teamName, creator: teamCreator);
                    Console.WriteLine($"Team {teamName} has been created by {teamCreator}!");
                    teams.Add(team);
                }
            }

            // Add memebers to the teams
            string cmd;
            while ((cmd = Console.ReadLine()!) != "end of assignment")
            {
                string[] cmdArray = cmd.Split("->");
                string userName = cmdArray[0];
                string teamName = cmdArray[1];

                Team? team = teams.FirstOrDefault(t => t.Name == teamName);

                if (team == null)
                {
                    Console.WriteLine($"Team {teamName} does not exist!");
                }
                else if (teams.Any(t => t.Members.Any(m => m == userName)) ||
                    teams.Any(t => t.Creator == userName))
                {
                    Console.WriteLine($"Member {userName} cannot join team {teamName}!");
                }
                else
                {
                    team.Members.Add(userName);
                }
            }

            List<Team> validTeams = teams.Where(t => t.Members.Count > 0)
                    .OrderByDescending(t => t.Members.Count)
                    .ThenBy(t => t.Name)
                    .ToList();
            List<Team> invalidTeams = teams.Where(t => t.Members.Count == 0)
                .OrderBy(t => t.Name)
                .ToList();

            // Print result
            foreach (Team team in validTeams)
            {
                Console.WriteLine(team.Name);
                Console.WriteLine("- " + team.Creator);
                foreach (string memberName in team.Members.OrderBy(x => x))
                {
                    Console.WriteLine("-- " + memberName);
                };
            }

            Console.WriteLine("Teams to disband:");
            foreach (Team team in invalidTeams)
            {
                Console.WriteLine(team.Name);
            }
        }
    }

    public class Team
    {
        // Fields

        // Constructors
        public Team(string name, string creator)
        {
            Creator = creator;
            Name = name;
        }

        // Properties
        public string Name { get; set; }
        public string Creator { get; set; }
        public List<string> Members { get; set; } = new List<string>();

        // Methods
        public void AddMember(string member)
        {
            Members.Add(member);
        }
    }
}
