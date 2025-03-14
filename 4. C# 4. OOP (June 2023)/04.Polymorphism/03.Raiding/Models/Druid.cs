// 03. Raiding

namespace _03.Raiding.Models
{
    public class Druid : BaseHero
    {
        public Druid(string name) 
            : base(name)
        {
            Power = 80;
        }

        public override string CastAbility()
        {
            return $"Druid - {Name} healed for {Power}";
        }
    }
}
