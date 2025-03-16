using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Factories.Interfaces
{
    public interface IVehicleFactory
    {
        public IVehicle Create(string type, double fuelQuanitity, double fuelConsumption, double tankCapacity);
    }
}
