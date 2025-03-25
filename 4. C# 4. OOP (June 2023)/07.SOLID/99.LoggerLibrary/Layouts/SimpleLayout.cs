using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.Layouts.Interface;
using System.Globalization;

namespace _99.LoggerLibrary.Layouts
{
    public class SimpleLayout : ILayout
    {
        public SimpleLayout(string filepath)
        {
            FilePath = filepath + "logs.txt";
        }

        public int MessagesAppended { get; private set; }
        public string FilePath { get; private set; }

        public string Log(string format, ReportLevel reportLevel, string message)
        {
            MessagesAppended++;

            string dateTimeNow = DateTime.Now.ToString(format, CultureInfo.InvariantCulture);
            return $"{dateTimeNow} - {reportLevel} - {message}";
        }
    }
}
