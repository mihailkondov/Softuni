using _07.MilitaryElite.Enums;
using _07.MilitaryElite.Models.Interfaces;

namespace _07.MilitaryElite.Models
{
    public class Mission : IMission
    {
        private static string finished = "Finished";
        private static string inprogress = "InProgress";
        private State _state;

        public Mission(string codeName, State state)
        {
            CodeName = codeName;
            State = state;
        }

        public string CodeName { get; private set; }
        public State State
        {
            get => _state;
            private set
            {
                _state = value;
            }
        }

        public void CompleteMission()
        {
            State = State.Finished;
        }

        public override string ToString()
        {
            return $"Code Name: {CodeName} State: {State}";
        }
    }
}
