using _04.Polymorphism.Models.Interfaces;

namespace _04.Polymorphism.Models
{
    public abstract class Vehicle : IDrivable
    {
        public double FuelQuantity { set; get; }
        public double FuelConsumption { set; get; }
        public abstract void Drive(double distance);
        public abstract void Refuel(double amount);
    }
}
