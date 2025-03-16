// 02. Vehicles Extension

namespace _01.VehiclesExtension.Models.Interfaces;

public interface IVehicle
{
    public double FuelQuantity { get; }
    public double FuelConsumption { get; }
    public double TankCapacity { get; }

    public string Drive(double distance);
    public void Refuel(double amount);
}
