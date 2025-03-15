using _07.MilitaryElite.Enums;
using _07.MilitaryElite.Models.Interfaces;
using System.Text;

namespace _07.MilitaryElite.Models
{
    public class Commando : SpecialisedSoldier, ICommando
    {
        private List<IMission> _missions;

        public Commando(int id, string firstName, string lastName, decimal salary, Corps corps)
            : base(id, firstName, lastName, salary, corps)
        {
            _missions = new List<IMission>();
        }

        public IReadOnlyCollection<IMission> Missions { get => _missions.AsReadOnly(); }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder(value: base.ToString());
            sb.Append(Environment.NewLine);
            sb.AppendLine("Missions:");
            foreach (var mission in Missions)
            {
                sb.Append("  ");
                sb.AppendLine(mission.ToString());
            }
            return sb.ToString().TrimEnd();
        }

        public void AddMission(IMission mission)
        {
            _missions.Add(mission);
        }
    }
}
