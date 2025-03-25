using _99.LoggerLibrary.Enums;
using System.Runtime.Serialization;

namespace _99.LoggerLibrary.Layouts.Interface
{
    public interface ILayout
    {
        public string Log(string format, ReportLevel reportLevel, string message);
        public int MessagesAppended { get; }
        public string FilePath { get; }
    }
}
