using System;

namespace SoftUniParking
{
    public class StartUp
    {
        public static void Main(string[] args)
        {
            var car = new Car("Skoda", "Fabia", 65, "CC1856BG");
            var car2 = new Car("Audi", "A3", 110, "EB8787MN");
            Console.WriteLine(car.ToString());
            // Make: Skoda
            // Model: Fabia
            // HorsePower: 65
            // RegistrationNumber: CC1856BG
            var parking = new Parking(1);
            Console.WriteLine(parking.AddCar(car));
            Console.WriteLine(parking.AddCar(car2));

            parking.RemoveSetOfRegistrationNumber(new System.Collections.Generic.List<string>(){ "CC1856BG", "EB8787MN", "non-existant" });
            Console.WriteLine(parking.Count);
            // 0

        }
    }
}
