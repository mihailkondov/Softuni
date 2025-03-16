// 02. Vehicles Extension

using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Models
{
    public abstract class Vehicle : IVehicle
    {
        private double _acConsumption;
        private double _fuelQuantity;

        // Constructor for exercise 1 and 2
        public Vehicle(double fuelQuantity, double fuelConsumption, double acConsumption)
        {

            FuelConsumption = fuelConsumption;
            TankCapacity = double.MaxValue;
            _acConsumption = acConsumption;
            _fuelQuantity = fuelQuantity;

        }

        // Constructor for exercise 2 only
        public Vehicle(double fuelQuantity, double fuelConsumption, double tankCapacity, double acConsumption)
            : this(fuelQuantity, fuelConsumption, acConsumption)
        {
            TankCapacity = tankCapacity;
            try
            {
                FuelQuantity = fuelQuantity;
            }
            catch
            {
                _fuelQuantity = 0;
            }
        }

        public double FuelQuantity 
        {
            get => _fuelQuantity;
            protected set
            {
                if (value < 0)
                {
                    throw new InvalidOperationException($"{this.GetType().Name} needs refueling");
                }

                if (value > TankCapacity)
                {
                    throw new InvalidOperationException();
                }

                _fuelQuantity = value;
            }
        }
        public double FuelConsumption { get; protected set; }
        public double TankCapacity { get; private set; }

        public virtual string Drive(double distance)
        {
            return Drive(distance, true);
        }

        public virtual string Drive(double distance, bool ac)
        {
            double fuelRequired;
            if (ac == true)
            {
                fuelRequired = distance * (FuelConsumption + _acConsumption);
            }
            else
            {
                fuelRequired = distance * (FuelConsumption);
            }

            if (fuelRequired > FuelQuantity)
            {
                throw new InvalidOperationException($"{this.GetType().Name} needs refueling");
            }

            FuelQuantity -= fuelRequired;
            return $"{this.GetType().Name} travelled {distance} km";
        }

        public virtual void Refuel(double amount)
        {
            if (amount <= 0)
            {
                throw new ArgumentException("Fuel must be a positive number");
            }

            if (amount + FuelQuantity > TankCapacity)
            {
                throw new InvalidOperationException($"Cannot fit {amount} fuel in the tank");
            }

            FuelQuantity += amount;
        }
    }
}
