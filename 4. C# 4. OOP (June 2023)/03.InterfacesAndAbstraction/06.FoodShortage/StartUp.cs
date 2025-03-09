// 06. Food Shortage

using _06.FoodShortage.Models;
using _06.FoodShortage.Models.Interfaces;

namespace _06.FoodShortage
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            List<IBuyer> BuyersOfFood = new List<IBuyer>();
            int N = int.Parse(Console.ReadLine()!);
            for (int i = 0; i < N; i++)
            {
                string[] input = Console.ReadLine()!.Split(' ');
                if (input.Length == 3)
                {
                    string rebelName = input[0];
                    int age = int.Parse(input[1]);
                    string group = input[2];
                    Rebel rebel = new Rebel(rebelName, age, group);
                    BuyersOfFood.Add(rebel);
                }
                else if (input.Length == 4)
                {
                    string citizenName = input[0];
                    int age = int.Parse(input[1]);
                    string id = input[2];
                    string birthdate = input[3];
                    Citizen citizen = new Citizen(citizenName, age, id, birthdate);
                    BuyersOfFood.Add(citizen);
                }
            }

            string name;
            while ((name = Console.ReadLine()!) != "End")
            {
                if (BuyersOfFood.Any(x => x.Name == name))
                {
                    BuyersOfFood.FirstOrDefault(x => x.Name == name).BuyFood();
                }
            }

            int totalFoodBought = 0;
            foreach (var buyer in BuyersOfFood)
            {
                totalFoodBought += buyer.Food;
            }
            Console.WriteLine(totalFoodBought);
        }
    }
}