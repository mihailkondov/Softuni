﻿// 03. Raiding

namespace _03.Raiding.Models
{
    public class Rogue : BaseHero
    {
        public Rogue(string name) 
            : base(name)
        {
            Power = 80;
        }

        public override string CastAbility()
        {
            return $"Rogue - {Name} hit for {Power} damage";
        }
    }
}
