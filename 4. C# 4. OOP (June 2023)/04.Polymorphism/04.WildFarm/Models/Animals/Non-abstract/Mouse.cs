using _04.WildFarm.Models.Food;

namespace _04.WildFarm.Models.Animals.Non_abstract
{
    public class Mouse : Mammal
    {
        public Mouse(string name, double weight, string livingRegion) 
            : base(name, weight, livingRegion)
        {

        }

        public override HashSet<string> GetDiet()
        {
            return new HashSet<string>() { nameof(Vegetable), nameof(Fruit) };
        }

        public override string Sound()
        {
            return "Squeak";
        }
    }
}
