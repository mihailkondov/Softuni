using _01.VehiclesExtension.IO.Interfaces;

namespace _01.VehiclesExtension.IO
{
    public class ConsoleWriter : IWriter
    {
        public void WriteLine(string lineOfText)
        {
            Console.WriteLine(lineOfText);
        }
    }
}
