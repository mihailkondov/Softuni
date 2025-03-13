using _04.Polymorphism.Models.Interfaces;

namespace _04.Polymorphism.Models
{
    public class Truck : Vehicle, IDrivable
    {
        private const double ACConsumption = 1.6;
        public Truck(double truckFuelQuantity, double truckFuelEfficiency)
        {
            FuelQuantity = truckFuelQuantity;
            FuelConsumption = truckFuelEfficiency;
        }

        public override void Drive(double distance)
        {
            double fuelNeeded = (FuelConsumption + ACConsumption) * distance;
            if(fuelNeeded > FuelQuantity) 
            {
                Console.WriteLine("Truck needs refueling");
            }
            else
            {
                FuelQuantity -= fuelNeeded;
                Console.WriteLine($"Truck travelled {distance} km");
            }
        }

        public override void Refuel(double amount) 
        {
            FuelQuantity += amount * 0.95;
        }
    }
}
