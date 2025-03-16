using _04.WildFarm.Models.Animals;
using _04.WildFarm.Models.Animals.Non_abstract;

namespace _04.WildFarm.Factories
{
    public class AnimalFactory
    {
        public static Animal CreateAnimal(string input)
        {
            string[] tokens = input.Split(' ', StringSplitOptions.RemoveEmptyEntries);
            Animal animal;
            switch (tokens[0])
            {
                case "Owl":
                    animal = new Owl(tokens[1], double.Parse(tokens[2]), double.Parse(tokens[3]));
                    break;
                case "Hen":
                    animal = new Hen(tokens[1], double.Parse(tokens[2]), double.Parse(tokens[3]));
                    break;
                case "Mouse":
                    animal = new Mouse(tokens[1], double.Parse(tokens[2]), tokens[3]);
                    break;
                case "Dog":
                    animal = new Dog(tokens[1], double.Parse(tokens[2]), tokens[3]);
                    break;
                case "Cat":
                    animal = new Cat(tokens[1], double.Parse(tokens[2]), tokens[3], tokens[4]);
                    break;
                case "Tiger":
                    animal = new Tiger(tokens[1], double.Parse(tokens[2]), tokens[3], tokens[4]);
                    break;
                default:
                    throw new ArgumentException("Invalid animal type");
            }
            return animal;
        }
    }
}
