using _99.LoggerLibrary.IO.Interfaces;
namespace _99.LoggerLibrary.IO
{
    public class ConsoleWriter : IWriter
    {
        public void WriteLine(string message)
        {
            Console.WriteLine(message);
        }
    }
}
