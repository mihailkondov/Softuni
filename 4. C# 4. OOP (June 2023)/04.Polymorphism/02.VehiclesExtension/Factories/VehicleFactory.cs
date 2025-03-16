using _01.VehiclesExtension.Factories.Interfaces;
using _01.VehiclesExtension.Models;
using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Factories
{
    public class VehicleFactory : IVehicleFactory
    {
        public IVehicle Create(
            string type, double fuelQuanitity, double fuelConsumption, double tankCapacity = double.MaxValue)
        {
            switch (type)
            {
                case "Car":
                    return new Car(fuelQuanitity, fuelConsumption, tankCapacity);
                case "Truck":
                    return new Truck(fuelQuanitity, fuelConsumption, tankCapacity);
                case "Bus":
                    return new Bus(fuelQuanitity, fuelConsumption, tankCapacity);
                default:
                    throw new ArgumentException("Vehicles can only be car, truck and bus");
            }
        }
    }
}
