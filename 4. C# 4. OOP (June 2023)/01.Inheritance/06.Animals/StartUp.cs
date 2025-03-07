// 06. Animals

namespace Animals;
public class StartUp
{
    public static void Main()
    {

        string animalType = string.Empty;
        Animal animal = null;
        List<Animal> animals = new List<Animal>();
        while ((animalType = Console.ReadLine()!) != "Beast!")
        {
            try
            {
                string[] description = Console.ReadLine()!
                    .Split(' ')
                    .ToArray();
                string name = description[0];
                int age = int.Parse(description[1]);
                switch (animalType)
                {
                    case "Cat":
                        animal = new Cat(name, age, description[2]);
                        break;
                    case "Dog":
                        animal = new Dog(name, age, description[2]);
                        break;
                    case "Frog":
                        animal = new Frog(name, age, description[2]);
                        break;
                    case "Kitten":
                        animal = new Kitten(name, age);
                        break;
                    case "Tomcat":
                        animal = new Tomcat(name, age);
                        break;
                    default:
                        throw new Exception(message: "Invalid input!");
                }
                animals.Add(animal);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        foreach (var currentAnimal in animals)
        {
            Console.WriteLine(currentAnimal.ToString());
        }
    }
}
