using _04.WildFarm.Models.Food;

namespace _04.WildFarm.Models.Animals.Non_abstract
{
    public class Dog : Mammal
    {
        public Dog(string name, double weight, string livingRegion) 
            : base(name, weight, livingRegion)
        {
        }

        public override HashSet<string> GetDiet()
        {
            return new HashSet<string>() { nameof(Meat) };
        }

        public override string Sound()
        {
            return "Woof!";
        }
    }
}
