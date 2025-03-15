using _07.MilitaryElite.Enums;
using _07.MilitaryElite.Models.Interfaces;
using System.Text;

namespace _07.MilitaryElite.Models
{
    public class Engineer : SpecialisedSoldier, IEngineer
    {
        private readonly List<IRepair> _repairs;
        public Engineer(int id, string firstName, string lastName, decimal salary, Corps corps)
            : base(id, firstName, lastName, salary, corps)
        {
            _repairs = new List<IRepair>();
        }
        public IReadOnlyCollection<IRepair> Repairs { get => _repairs; }

        public void AddRepair(IRepair repair)
        {
            _repairs.Add(repair);
        }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder(value: base.ToString());
            sb.Append(Environment.NewLine);
            sb.AppendLine("Repairs:");
            foreach (var repair in Repairs)
            {
                sb.Append("  ");
                sb.AppendLine(repair.ToString());
            }
            return sb.ToString().TrimEnd();
        }
    }

}
