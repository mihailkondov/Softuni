using _01.VehiclesExtension.Core.Interfaces;
using _01.VehiclesExtension.Factories.Interfaces;
using _01.VehiclesExtension.IO.Interfaces;
using _01.VehiclesExtension.Models.Interfaces;

namespace _01.VehiclesExtension.Core
{
    public abstract class VehicleCreatorAbstract : IVehicleCreator
    {
        protected IVehicleFactory _factory;
        protected IReader _reader;
        protected Dictionary<string, IVehicle> _vehicles;

        public VehicleCreatorAbstract(IVehicleFactory factory, IReader reader)
        {
            _factory = factory;
            _reader = reader;
            _vehicles = new Dictionary<string, IVehicle>();
        }

        protected Dictionary<string, IVehicle> Vehicles { get => _vehicles; }

        public abstract Dictionary<string, IVehicle> CreateVehicles();
    }
}
