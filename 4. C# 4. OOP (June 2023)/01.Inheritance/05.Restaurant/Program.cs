// 05. Restaurant

namespace Restaurant
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            Console.WriteLine("C# OOP - Inheritance");
            Console.WriteLine("    Exercise 05: Restaurant");
            
            Console.WriteLine();
            Coffee coffee = new Coffee("Cappuccino", 6.0);
            Cake cake = new Cake("Garage");

            Console.WriteLine($"{coffee.Name}: {coffee.Price} lv, {coffee.Caffeine} caffeine, {coffee.Millimeters} quantity");
            Console.WriteLine($"{cake.Name}: {cake.Price} lv, {cake.Grams} grams, {cake.Calories} calories");
        }
    }
}