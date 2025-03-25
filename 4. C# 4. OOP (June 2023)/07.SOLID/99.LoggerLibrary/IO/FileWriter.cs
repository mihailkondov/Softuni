using _99.LoggerLibrary.IO.Interfaces;

namespace _99.LoggerLibrary.IO
{
    public class FileWriter : IWriter
    {
        string _path;
        public FileWriter(string path)
        {
            _path = path;
        }

        public void WriteLine(string message)
        {
            StreamWriter _streamWriter = File.AppendText(_path);
            using (_streamWriter)
            {
                _streamWriter?.WriteLine(message);
            }
        }
    }
}
