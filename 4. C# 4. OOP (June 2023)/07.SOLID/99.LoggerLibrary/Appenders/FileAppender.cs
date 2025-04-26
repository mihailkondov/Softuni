using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.IO;
using _99.LoggerLibrary.IO.Interfaces;
using _99.LoggerLibrary.Layouts.Interface;
using Microsoft.VisualBasic;
using System.Drawing;
using System.Text;

namespace _99.LoggerLibrary.Appenders
{
    public class FileAppender : IAppender, IFileAppender
    {
        IWriter _writer;
        ILayout _layout;

        public FileAppender(ILayout layout, string logFilePath)
        {
            _writer = new FileWriter(logFilePath);
            _layout = layout;
            ReportLevel = ReportLevel.Info;
            FilePath = logFilePath;
            Size = 0;
        }

        public string FilePath { get; private set; }
        public ReportLevel ReportLevel { get; set; }

        public ILayout Layout => _layout;

        public int Size { get; private set; }

        public void Append(string timeStamp, string message, ReportLevel reportLevel)
        {
            string entry = _layout.Log(Utils.DateFormat.DateFormats, reportLevel, message);
            Size += entry.Where(c => char.IsLetter(c)).Sum(c => (int)c);
            _writer.WriteLine(entry);
        }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append($"Appender type: {GetType().Name}, ");
            sb.Append($"Layout type: {Layout.GetType().Name}, ");
            sb.Append($"Report level: {ReportLevel}, ");
            sb.Append($"Messages appended: {Layout.MessagesAppended}, ");
            sb.Append($"File size: {Size}");

            return sb.ToString();
        }
    }
}
