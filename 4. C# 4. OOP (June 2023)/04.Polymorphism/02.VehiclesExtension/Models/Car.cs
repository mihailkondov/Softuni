// 02. Vehicles Extension - Car

namespace _01.VehiclesExtension.Models
{
    public class Car : Vehicle
    {
        private const double CarAcConsumptionConstant = 0.9;

        public Car(double fuelQuantity, double fuelConsumption)
            : base(fuelQuantity, fuelConsumption, CarAcConsumptionConstant)
        {

        }

        public Car(double fuelQuantity, double fuelConsumption, double tankCapacity)
            : base(fuelQuantity, fuelConsumption, tankCapacity, CarAcConsumptionConstant)
        {
        
        }
    }
}
