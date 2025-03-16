using _04.WildFarm.Factories;
using _04.WildFarm.Models.Animals;
using _04.WildFarm.Models.Interfaces;

namespace _04.WildFarm
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            string input;
            List<Animal> animals = new List<Animal>();
            while ((input = Console.ReadLine()!) != "End")
            {
                Animal animal = AnimalFactory.CreateAnimal(input);
                Console.WriteLine(animal.Sound());
                animals.Add(animal);

                string[] foodInfo = Console.ReadLine()!.Split(' ');
                try
                {
                    IEdible edible = FoodFactory.CreateVegetable(foodInfo[0], int.Parse(foodInfo[1]));
                    animal.Eat(edible);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            foreach (Animal animal in animals)
            {
                Console.WriteLine(animal);
            }
        }
    }
}