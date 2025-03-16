using _01.VehiclesExtension.Core.Interfaces;
using _01.VehiclesExtension.IO;
using _01.VehiclesExtension.IO.Interfaces;
using _01.VehiclesExtension.Models;
using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Core
{
    public class EngineEx1 : IEngine
    {
        private IReader _reader;
        private IWriter _writer;

        public EngineEx1()
        {
            _reader = new ConsoleReader();
            _writer = new ConsoleWriter();
        }

        // This is never used for the exercise, but may be useful for testing
        public EngineEx1(IReader reader, IWriter writer)
        {
            _reader = reader;
            _writer = writer;
        }

        public void Run()
        {
            string[] input1 = _reader.ReadLine()!.Split(' ');
            double carFuelQuantity = double.Parse(input1[1]);
            double carFuelEfficiency = double.Parse(input1[2]);
            IVehicle car = new Car(carFuelQuantity, carFuelEfficiency);

            string[] input2 = _reader.ReadLine()!.Split(' ');
            double truckFuelQuantity = double.Parse(input2[1]);
            double truckFuelEfficiency = double.Parse(input2[2]);
            IVehicle truck = new Truck(truckFuelQuantity, truckFuelEfficiency);

            int N = int.Parse(_reader.ReadLine()!);
            for (int i = 0; i < N; i++)
            {
                string[] input = _reader.ReadLine()!.Split(' ');
                string command = input[0];
                string vehicleType = input[1];
                double parameter = double.Parse(input[2]);

                IVehicle vehicle;
                if (vehicleType == "Car")
                {
                    vehicle = car;
                }
                else if (vehicleType == "Truck")
                {
                    vehicle = truck;
                }
                else
                {
                    throw new ArgumentException("Vehicles can only be car and truck.");
                }

                try
                {
                    if (command == "Drive")
                    {
                        _writer.WriteLine(vehicle.Drive(parameter));
                    }
                    else if (command == "Refuel")
                    {

                        vehicle.Refuel(parameter);
                    }
                }
                catch (Exception ex)
                {
                    _writer.WriteLine(ex.Message);
                }
            }

            _writer.WriteLine($"Car: {car.FuelQuantity:F2}");
            _writer.WriteLine($"Truck: {truck.FuelQuantity:F2}");
        }
    }
}
