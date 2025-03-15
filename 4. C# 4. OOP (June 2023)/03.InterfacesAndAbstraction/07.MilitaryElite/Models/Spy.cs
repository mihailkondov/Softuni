using _07.MilitaryElite.Models.Interfaces;
using System.Text;

namespace _07.MilitaryElite.Models
{
    public class Spy : Soldier, ISpy
    {
        public Spy(int id, string firstName, string lastName, int codeNumber)
            : base(id, firstName, lastName)
        {
            CodeNumber = codeNumber;
        }

        public int CodeNumber { get; private set; }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder(value: base.ToString());
            sb.Append(Environment.NewLine);
            sb.Append($"Code Number: {CodeNumber}");

            return sb.ToString();
        }
    }
}
