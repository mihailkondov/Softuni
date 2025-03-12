// 05. Football Team Generator - Player

namespace _05.FootballTeamGenerator
{
    public class Player
    {
        private const int StatMinValue = 0;
        private const int StatMaxValue = 100;

        private string name;
        // Stats
        private int endurance;
        private int sprint;
        private int dribble;
        private int passing;
        private int shooting;


        public Player(string name, int endurance, int sprint, int dribble, int passing, int shooting)
        {
            Name = name;

            Endurance = endurance;
            Sprint = sprint;
            Dribble = dribble;
            Passing = passing;
            Shooting = shooting;

            if (this.name == null)
            {
                throw new InvalidOperationException("Name setter doesn't work!");
            }
        }

        public string Name
        {
            get => name;
            private set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException(ErrorMessages.NameEmptyExceptionMessage);
                }
                name = value;
            }
        }
        public int Endurance
        {
            get => endurance;
            private set
            {
                ThrowIfInvalidValue(value, nameof(Endurance));
                endurance = value;
            }
        }
        public int Sprint
        {
            get => sprint;
            private set
            {
                ThrowIfInvalidValue(value, nameof(Sprint));
                sprint = value;
            }
        }
        public int Dribble
        {
            get => dribble;
            private set
            {
                ThrowIfInvalidValue(value, nameof(Dribble));
                dribble = value;
            }
        }
        public int Passing
        {
            get => passing;
            private set
            {
                ThrowIfInvalidValue(value, nameof(Passing));
                passing = value;
            }
        }
        public int Shooting
        {
            get => shooting; private set
            {
                ThrowIfInvalidValue(shooting, nameof(Shooting));
                shooting = value;
            }
        }

        public double GetStats()
        {
            return (double)(Endurance + Sprint + Dribble + Passing + Shooting) / 5;
        }

        private void ThrowIfInvalidValue(int stat, string statName)
        {
            if (stat < StatMinValue || stat > StatMaxValue)
            {
                throw new ArgumentException(
                    string.Format(
                        ErrorMessages.StatValidationError, 
                        statName, 
                        StatMinValue, 
                        StatMaxValue
                    )
                );
            }
        }
    }
}
