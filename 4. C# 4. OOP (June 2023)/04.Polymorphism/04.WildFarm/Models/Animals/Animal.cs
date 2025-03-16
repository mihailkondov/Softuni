using _04.WildFarm.Models.Interfaces;

namespace _04.WildFarm.Models.Animals
{
    public abstract class Animal : ISound
    {
        public Animal(string name, double weight)
        {
            Name = name;
            Weight = weight;
            FoodEaten = 0;
        }

        public abstract HashSet<string> GetDiet();
        public string Name { get; set; }
        public double Weight { get; set; }
        public int FoodEaten { get; set; }

        public abstract string Sound();

        public void Eat(IEdible food)
        {
            HashSet<string> diet = GetDiet();
            string foodType = food.GetType().Name;

            if (!diet.Contains(foodType))
            {
                throw new InvalidOperationException($"{this.GetType().Name} does not eat {foodType}!");
            }

            Grow(food.Quanity);
            FoodEaten += food.Quanity;
        }

        protected private void Grow(int quantity)
        {
            string animalType = GetType().Name;
            double growthAmount;
            switch (animalType)
            {
                case "Hen":
                    growthAmount = 0.35;
                    break;
                case "Owl":
                    growthAmount = 0.25;
                    break;
                case "Mouse":
                    growthAmount = 0.10;
                    break;
                case "Cat":
                    growthAmount = 0.30;
                    break;
                case "Dog":
                    growthAmount = 0.40;
                    break;
                case "Tiger":
                    growthAmount = 1.00;
                    break;
                default:
                    throw new ArgumentException("Invalid Animal Type");
            }

            Weight += growthAmount * quantity;
        }
    }
}
