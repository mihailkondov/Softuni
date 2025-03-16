using _01.VehiclesExtension.Core.Interfaces;
using _01.VehiclesExtension.IO;
using _01.VehiclesExtension.IO.Interfaces;
using _01.VehiclesExtension.Models.Interfaces;
using _01.VehiclesExtension.Models;
using _01.VehiclesExtension.Factories;
using _01.VehiclesExtension.Factories.Interfaces;

namespace _01.VehiclesExtension.Core
{
    public class EngineEx2 : IEngine
    {
        IReader _reader;
        IWriter _writer;
        IVehicleFactory _factory;
        Dictionary<string, IVehicle> _vehicles;
        VehicleCreatorAbstract _vehicleCreator;

        public EngineEx2()
        {
            _reader = new ConsoleReader();
            _writer = new ConsoleWriter();
            _factory = new VehicleFactory();
            _vehicleCreator = new VehicleCreatorEx2(_factory, _reader);
            _vehicles = _vehicleCreator.CreateVehicles();
        }

        // This is never used for the exercise, but may be useful for testing
        public EngineEx2(IReader reader, IWriter writer)
        {
            _reader = reader;
            _writer = writer;
            _factory = new VehicleFactory();
            _vehicleCreator = new VehicleCreatorEx2(_factory, _reader);
            _vehicles = _vehicleCreator.CreateVehicles();
        }

        public EngineEx2(IReader reader, IWriter writer, IVehicleFactory factory)
        {
            _reader = reader;
            _writer = writer;
            _factory = factory;
            _vehicleCreator = new VehicleCreatorEx2(_factory, _reader);
            _vehicles = _vehicleCreator.CreateVehicles();
        }

        // Public methods
        public void Run()
        {
            int numberOfCommands = int.Parse(_reader.ReadLine()!);

            for (int i = 0; i < numberOfCommands; i++)
            {
                try
                {
                    ProcessCommand();
                }
                catch (Exception ex)
                {
                    _writer.WriteLine(ex.Message);
                }
            }

            PrintVehiclesAndFuelQuantities();
        }

        // Private methods
        private void PrintVehiclesAndFuelQuantities()
        {
            foreach (var vehicle in _vehicles)
            {
                _writer.WriteLine($"{vehicle.Key}: {vehicle.Value.FuelQuantity:F2}");
            }
        }

        private void ProcessCommand()
        {
            string[] input = _reader.ReadLine()!.Split(' ');
            string command = input[0];
            string vehicleType = input[1];
            double parameter = double.Parse(input[2]);

            IVehicle vehicle;
            vehicle = _vehicles[vehicleType];

            if (command == "Drive")
            {
                _writer.WriteLine(vehicle.Drive(parameter));
            }
            else if (command == "DriveEmpty" )
            {
                if (vehicleType != "Bus")
                {
                    throw new InvalidOperationException("Only a bus can use the command \"DriveEmpty\"");
                }

                _writer.WriteLine(((Bus)vehicle).DriveEmpty(parameter));
            }
            else if (command == "Refuel")
            {
                vehicle.Refuel(parameter);
            }
        }

        private void CreateVehicles(IVehicleFactory factory)
        {
            for (int i = 0; i < 3; i++)
            {
                string[] input = _reader.ReadLine()!.Split(' ');
                IVehicle vehicle = factory.Create(
                    type: input[0],
                    fuelQuanitity: double.Parse(input[1]),
                    fuelConsumption: double.Parse(input[2]),
                    tankCapacity: double.Parse(input[3])
                );
                _vehicles[input[0]] = vehicle;
            }
        }
    }
}
