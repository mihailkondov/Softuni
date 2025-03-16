using _01.VehiclesExtension.Factories.Interfaces;
using _01.VehiclesExtension.IO.Interfaces;
using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Core
{
    public class VehicleCreatorEx2 : VehicleCreatorAbstract
    {
        string[] _vehicleKeys = new string[] { "Car", "Truck", "Bus" };

        public VehicleCreatorEx2(IVehicleFactory factory, IReader reader)
            : base(factory, reader)
        {

        }

        public override Dictionary<string, IVehicle> CreateVehicles()
        {
            foreach (string key in _vehicleKeys)
            {
                string[] input = _reader.ReadLine()!.Split(' ');
                IVehicle newVehicle = _factory.Create(
                    type: input[0],
                    fuelQuanitity: double.Parse(input[1]),
                    fuelConsumption: double.Parse(input[2]),
                    tankCapacity: double.Parse(input[3])
                );
                _vehicles[key] = newVehicle;
            }

            return _vehicles;
        }
    }
}
