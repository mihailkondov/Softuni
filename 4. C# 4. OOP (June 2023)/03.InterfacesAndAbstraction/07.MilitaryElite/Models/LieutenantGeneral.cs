using System.Text;
using _07.MilitaryElite.Models.Interfaces;
namespace _07.MilitaryElite.Models
{
    public class LieutenantGeneral : Private, ILieutenantGeneral
    {
        private readonly IReadOnlyCollection<IPrivate> _privates;
        public LieutenantGeneral(int id, string firstName, string lastName, decimal salary, IReadOnlyCollection<IPrivate> privates)
            : base(id, firstName, lastName, salary)
        {
            _privates = privates;
        }

        public IReadOnlyCollection<IPrivate> Privates { get => _privates; }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder(value: base.ToString());
            sb.Append(Environment.NewLine);
            sb.AppendLine("Privates:");
            foreach (Private @private in Privates)
            {
                sb.Append("  ");
                sb.AppendLine(@private.ToString());
            }

            return sb.ToString().TrimEnd();
        }
    }
}
