// 04. Need For Speed - Classes

namespace NeedForSpeed
{
    public class Vehicle
    {
        private double fuel;

        public Vehicle(int horsePower, double fuel)
        {
            this.HorsePower = horsePower;
            this.fuel = fuel;
        }

        public int HorsePower { get; set; }
        public double Fuel
        {
            get { return this.fuel; }
            set { this.fuel = value; }
        }
        public double DefaultFuelConsumption;
        public virtual double FuelConsumption { get; set; }

        public virtual void Drive(double kilometers)
        {
            fuel -= kilometers * 1.25;
        }
    }

    public class Motorcycle : Vehicle
    {
        public Motorcycle(int horsePower, double fuel)
            : base(horsePower, fuel)
        {

        }
    }

    public class RaceMotorcycle : Motorcycle
    {
        public RaceMotorcycle(int horsePower, double fuel)
            : base(horsePower, fuel)
        {

        }

        public override void Drive(double kilometers)
        {
            this.Fuel -= kilometers * 8;
        }
    }

    public class CrossMotorcycle : Motorcycle
    {
        public CrossMotorcycle(int horsePower, double fuel)
            : base(horsePower, fuel)
        {

        }
    }

    public class Car : Vehicle
    {
        public Car(int horsePower, double fuel)
            : base(horsePower, fuel)
        {

        }

        public override void Drive(double kilometers)
        {
            this.Fuel -= kilometers * 3;
        }
    }

    public class FamilyCar : Car
    {
        public FamilyCar(int horsePower, double fuel)
            : base(horsePower, fuel)
        {

        }
    }

    public class SportCar : Car
    {
        public SportCar(int horsePower, double fuel)
            : base(horsePower, fuel)
        {

        }

        public override void Drive(double kilometers)
        {
            this.Fuel -= kilometers * 10;
        }
    }
}
