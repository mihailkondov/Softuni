using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.IO.Interfaces
{
    public interface IVehicleReader
    {
        public IVehicle GetVehicle<T>() where T : IVehicle;
    }
}
