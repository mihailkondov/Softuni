namespace _04.Polymorphism.Models
{
    public class Car : Vehicle
    {
        private const double ACConsumption = 0.9;

        public Car(double carFuelQuantity, double carFuelEfficiency)
        {
            FuelQuantity = carFuelQuantity;
            FuelConsumption = carFuelEfficiency;
        }

        public override void Drive(double distance)
        {
            double fuelNeeded = (FuelConsumption + ACConsumption) * distance;
            if (fuelNeeded > FuelQuantity)
            {
                Console.WriteLine("Car needs refueling");
            }
            else
            {
                FuelQuantity -= fuelNeeded;
                Console.WriteLine($"Car travelled {distance} km");
            }
        }

        public override void Refuel(double amount)
        {
            FuelQuantity += amount;
        }
    }
}
