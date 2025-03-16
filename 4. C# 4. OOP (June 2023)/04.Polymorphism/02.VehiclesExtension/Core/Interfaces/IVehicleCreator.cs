using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Core.Interfaces
{
    public interface IVehicleCreator
    {
        public Dictionary<string, IVehicle> CreateVehicles();
    }
}
