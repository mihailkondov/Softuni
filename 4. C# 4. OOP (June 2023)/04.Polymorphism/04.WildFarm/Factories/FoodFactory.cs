using _04.WildFarm.Models.Food;
using _04.WildFarm.Models.Interfaces;

namespace _04.WildFarm.Factories
{
    public class FoodFactory
    {
        public static IEdible CreateVegetable(string type, int quantity)
        {
            IEdible edible;
            switch (type)
            {
                case "Fruit":
                    edible = new Fruit(quantity);
                    break;
                case "Meat":
                    edible = new Meat(quantity);
                    break;
                case "Seeds":
                    edible = new Seeds(quantity);
                    break;
                case "Vegetable":
                    edible = new Vegetable(quantity);
                    break;
                default:
                    throw new ArgumentException("Invalid food type");
            }
            return edible;
        }
    }
}
