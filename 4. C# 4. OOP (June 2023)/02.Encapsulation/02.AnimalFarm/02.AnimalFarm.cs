namespace AnimalFarm
{
    using System;
    using AnimalFarm.Models;
    class Program
    {
        static void Main(string[] args)
        {
            string name = Console.ReadLine();
            int age = int.Parse(Console.ReadLine());

            try
            {
                Chicken chicken = new Chicken(name, age);
                Console.WriteLine(
                "Chicken {0} (age {1}) can produce {2} eggs per day.",
                chicken.Name,
                chicken.Age,
                chicken.ProductPerDay);
            }

            catch (ArgumentNullException ex)
            {
                Console.WriteLine("Name cannot be empty.");
            }
            catch (ArgumentOutOfRangeException ex)
            {
                Console.WriteLine("Age should be between 0 and 15.");
            }


        }
    }
}
