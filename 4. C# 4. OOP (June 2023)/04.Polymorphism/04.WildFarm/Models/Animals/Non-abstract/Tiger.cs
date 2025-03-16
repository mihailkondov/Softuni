using _04.WildFarm.Models.Food;

namespace _04.WildFarm.Models.Animals.Non_abstract
{
    public class Tiger : Feline
    {
        public Tiger(string name, double weight, string livingRegion, string breed) 
            : base(name, weight, livingRegion, breed)
        {

        }

        public override HashSet<string> GetDiet()
        {
            return new HashSet<string>() { nameof(Meat) };
        }

        public override string Sound()
        {
            return "ROAR!!!";
        }      
    }
}
