using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.Layouts.Interface;
using System.Runtime.Serialization;

namespace _99.LoggerLibrary.Appenders.Interface
{
    public interface IAppender
    {
        public ILayout Layout { get;}
        public void Append(string format, string message, ReportLevel reportLevel);
        public ReportLevel ReportLevel { get; set; }

    }
}
