using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.IO;
using _99.LoggerLibrary.IO.Interfaces;
using _99.LoggerLibrary.Layouts.Interface;
using System.Text;

namespace _99.LoggerLibrary.Appenders
{
    public class ConsoleAppender : IAppender
    {
        IWriter _writer;
        ILayout _layout;

        public ConsoleAppender(ILayout layout)
        {
            _layout = layout;
            _writer = new ConsoleWriter();
            ReportLevel = ReportLevel.Info;
        }

        public ReportLevel ReportLevel { get; set; }

        public ILayout Layout => _layout;

        public void Append(string format, string message, ReportLevel reportLevel)
        {
            string entry = _layout.Log(format, reportLevel, message);
            _writer.WriteLine(entry);
        }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append($"Appender type: {GetType().Name}, ");
            sb.Append($"Layout type: {Layout.GetType().Name}, ");
            sb.Append($"Report level: {ReportLevel}, ");
            sb.Append($"Messages appended: {Layout.MessagesAppended}");
            return sb.ToString();
        }
    }
}
