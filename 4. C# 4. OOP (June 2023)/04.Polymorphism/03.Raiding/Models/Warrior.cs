// 03. Raiding

namespace _03.Raiding.Models
{
    public class Warrior : BaseHero
    {
        public Warrior(string name) 
            : base(name)
        {
            Power = 100;
        }
        public override string CastAbility()
        {
            return $"Warrior - {Name} hit for {Power} damage";
        }
    }
}
