// 02. Vehicles Extension

namespace _01.VehiclesExtension.Models
{
    public class Truck : Vehicle
    {
        private const double TruckAcConsumptionConstant = 1.6;

        public Truck(double fuelQuantity, double fuelConsumption)
            : base(fuelQuantity, fuelConsumption, TruckAcConsumptionConstant)
        {

        }

        public Truck(double fuelQuantity, double fuelConsumption, double tankCapacity)
            : base(fuelQuantity, fuelConsumption, tankCapacity, TruckAcConsumptionConstant)
        {

        }

        public override void Refuel(double amount)
        {
            if (amount <= 0)
            {
                throw new ArgumentException("Fuel must be a positive number");
            }

            if (amount * 0.95 > TankCapacity)
            {
                throw new ArgumentException($"Cannot fit {amount} fuel in the tank");
            }

            FuelQuantity += amount * 0.95;
        }
    }
}
