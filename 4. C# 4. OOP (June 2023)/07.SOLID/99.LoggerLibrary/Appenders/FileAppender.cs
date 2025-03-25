using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.IO;
using _99.LoggerLibrary.IO.Interfaces;
using _99.LoggerLibrary.Layouts.Interface;
using System.Text;

namespace _99.LoggerLibrary.Appenders
{
    public class FileAppender : IAppender
    {
        IWriter _writer;
        ILayout _layout;

        public FileAppender(ILayout layout, string logFilePath)
        {
            _writer = new FileWriter(logFilePath);
            _layout = layout;
            ReportLevel = ReportLevel.Info;
            FilePath = logFilePath;
        }

        public string FilePath { get; private set; }
        public ReportLevel ReportLevel { get; set; }

        public ILayout Layout => _layout;

        public void Append(string format, string message, ReportLevel reportLevel)
        {
            string entry = _layout.Log(format, reportLevel, message);
            _writer.WriteLine(entry);
        }

        public override string ToString()
        {
            long sumOfChars = 0;
            using (var reader = new StreamReader(FilePath))
            {
                int c;
                while((c = reader.Read()) != -1)
                {
                    sumOfChars += c;
                }
            }

            StringBuilder sb = new StringBuilder();
            sb.Append($"Appender type: {GetType().Name}, ");
            sb.Append($"Layout type: {Layout.GetType().Name}, ");
            sb.Append($"Report level: {ReportLevel}, ");
            sb.Append($"Messages appended: {Layout.MessagesAppended}, ");
            sb.Append($"File size: {sumOfChars}");

            return sb.ToString();
        }
    }
}
