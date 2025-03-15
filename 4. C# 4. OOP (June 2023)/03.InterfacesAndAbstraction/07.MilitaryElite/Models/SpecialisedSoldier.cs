using _07.MilitaryElite.Enums;
using _07.MilitaryElite.Models.Interfaces;
namespace _07.MilitaryElite.Models
{
    public abstract class SpecialisedSoldier : Private, ISpecialisedSoldier
    {
        private Corps _corps;
        protected SpecialisedSoldier(int id, string firstName, string lastName, decimal salary, Corps corps)
            : base(id, firstName, lastName, salary)
        {
            Corps = corps;
        }

        public Corps Corps
        {
            get => _corps;
            private set
            {
                _corps = value;
            }
        }

        public override string ToString()
        {
            return base.ToString() + $"{Environment.NewLine}Corps: {Corps}";
        }
    }
}
