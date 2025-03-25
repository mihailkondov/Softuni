using _99.LoggerLibrary.Enums;
using System.Runtime.Serialization;

namespace _99.LoggerLibrary.Loggers.Interface
{
    public interface ILogger
    {
        public void Info(string format, string message);
        public void Warning(string format, string message);
        public void Error(string format, string message);
        public void Critical(string format, string message);
        public void Fatal(string format, string message);
        public void Log(string format, string message, ReportLevel level);
    }
}
