using _01.VehiclesExtension.IO.Interfaces;

namespace _01.VehiclesExtension.IO
{
    public class ConsoleReader : IReader
    {
        public string? ReadLine()
        {
            return Console.ReadLine();
        }
    }
}
