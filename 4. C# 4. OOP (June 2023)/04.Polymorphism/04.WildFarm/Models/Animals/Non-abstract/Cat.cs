using _04.WildFarm.Models.Food;
using _04.WildFarm.Models.Interfaces;

namespace _04.WildFarm.Models.Animals.Non_abstract
{
    public class Cat : Feline, ISound
    {
        public Cat(string name, double weight, string livingRegion, string breed) 
            : base(name, weight, livingRegion, breed)
        {

        }

        public override HashSet<string> GetDiet()
        {
            return new HashSet<string>() { nameof(Meat), nameof(Vegetable) };
        }

        public override string Sound()
        {
            return "Meow";
        }
    }
}
