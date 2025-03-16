// 01. Vehicles Extension
using _01.VehiclesExtension.Core;
using _01.VehiclesExtension.Core.Interfaces;
namespace _01.VehiclesExtension;

public class StartUp
{
    static void Main(string[] args)
    {
        IEngine engine = new EngineEx2();
        engine.Run();
    }
}