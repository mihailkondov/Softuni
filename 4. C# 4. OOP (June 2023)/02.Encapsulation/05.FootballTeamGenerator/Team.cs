// 05. Football Team Generator - Team

namespace _05.FootballTeamGenerator
{
    public class Team
    {
        // Fields
        private string name;
        private List<Player> players;

        // Constructor
        public Team(string name)
        {
            players = new List<Player>();
            Name = name;
        }

        // Properties
        public string Name
        {
            get => this.name;
            private set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException(ErrorMessages.NameEmptyExceptionMessage);
                }
                name = value;
            }
        }
        public double Rating 
        {
            get
            {
                if (players.Count == 0)
                {
                    return 0;
                }

                return players.Sum(p => p.GetStats()) / players.Count;
            }
        }

        // Public methods
        public void AddPlayer(Player player)
        {
            players.Add(player);
        }

        public void RemovePlayer(string playerName)
        {
            Player? player = players.FirstOrDefault(p => p.Name == playerName);
            if (player is null)
            {
                throw new ArgumentException(string.Format(ErrorMessages.PlayerMissingError, playerName, Name));
            }

            players.Remove(player);
        }
    }
}
