using _03.Raiding.Models;

namespace _03.Raiding
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            List<BaseHero> list = new List<BaseHero>();
            int N = int.Parse(Console.ReadLine()!);
            for (int i = 0; i < N; i++)
            {
                string heroName = Console.ReadLine()!;
                string heroType = Console.ReadLine()!;
                if (heroType == "Druid")
                {
                    Druid druid = new Druid(heroName);
                    list.Add(druid);
                }
                else if (heroType == "Paladin")
                {
                    Paladin paladin = new Paladin(heroName);
                    list.Add(paladin);
                }
                else if (heroType == "Rogue")
                {
                    Rogue rogue = new Rogue(heroName);
                    list.Add(rogue);
                }
                else if (heroType == "Warrior")
                {
                    Warrior warrior = new Warrior(heroName);
                    list.Add(warrior);
                }
                else
                {
                    Console.WriteLine("Invalid hero!");
                    i--;
                }
            }

            int bossPower = int.Parse(Console.ReadLine()!);
            int heroesCombinedPower = 0;
            foreach (var hero in list)
            {
                Console.WriteLine(hero.CastAbility());
                heroesCombinedPower += hero.Power;
            }

            if (heroesCombinedPower >= bossPower)
            {
                Console.WriteLine("Victory!");
            }
            else
            {
                Console.WriteLine("Defeat...");
            }
        }
    }
}