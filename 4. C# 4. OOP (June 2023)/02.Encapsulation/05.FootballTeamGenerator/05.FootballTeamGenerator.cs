// 05.Football Team Generator - Start Up

using _05.FootballTeamGenerator;

List<Team> teams = new List<Team>();
string input = string.Empty;
while ((input = Console.ReadLine()!) != "END")
{
    try
    {
        string[] cmd = input.Split(';');
        switch (cmd[0])
        {
            case "Team":
                Team newlyCreatedTeam = new Team(cmd[1]);
                teams.Add(newlyCreatedTeam);
                break;
            case "Add":
                AddTeam(teams, cmd);
                break;
            case "Remove":
                RemoveTeam(teams, cmd[1], cmd[2]);
                break;
            case "Rating":
                string name = cmd[1];
                PrintRating(teams, name);
                break;
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.Message);
    }
}

static void AddTeam(List<Team> teams, string[] cmd)
{
    Team? teamToAddPlayer = teams.FirstOrDefault(t => t.Name == cmd[1]);
    if (teamToAddPlayer == null)
    {
        throw new ArgumentException(string.Format(ErrorMessages.TeamMissingError, cmd[1]));
    }
    int endurance = int.Parse(cmd[3]);
    int sprint = int.Parse(cmd[4]);
    int dribble = int.Parse(cmd[5]);
    int passing = int.Parse(cmd[6]);
    int shooting = int.Parse(cmd[7]);
    Player? player = new Player(cmd[2], endurance, sprint, dribble, passing, shooting);
    teamToAddPlayer.AddPlayer(player);
}

static void RemoveTeam(List<Team> teams, string teamName, string playerName)
{
    Team? teamToRemovePlayer = teams.FirstOrDefault(t => t.Name == teamName);
    if (teamToRemovePlayer is null)
    {
        throw new ArgumentException(string.Format(ErrorMessages.TeamMissingError, teamName));
    }
    teamToRemovePlayer.RemovePlayer(playerName);
}

static void PrintRating(List<Team> teams, string teamName)
{
    Team? teamToRate = teams.FirstOrDefault(t => t.Name == teamName);
    if (teamToRate == null)
        throw new ArgumentException(string.Format(ErrorMessages.TeamMissingError, teamName));
    Console.WriteLine($"{teamName} - {teamToRate.Rating:F0}");
}