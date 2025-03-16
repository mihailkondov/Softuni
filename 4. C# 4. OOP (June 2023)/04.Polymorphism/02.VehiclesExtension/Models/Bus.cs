// 02. Vehicles Extension

using _01.VehiclesExtension;
using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Models
{
    public class Bus : Vehicle, IBus
    {
        private const double BusAcConsumptionConstant = 1.4;

        public Bus (double fuelQuantity, double fuelConsumption, double tankCapacity) 
            : base(fuelQuantity, fuelConsumption, tankCapacity, BusAcConsumptionConstant) 
        {
            
        }

        public string DriveEmpty(double parameter)
        {
            return base.Drive(parameter, false);
        }
    }
}
