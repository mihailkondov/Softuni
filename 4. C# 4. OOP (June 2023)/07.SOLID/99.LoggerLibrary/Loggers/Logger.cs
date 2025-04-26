using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Loggers.Interface;
using _99.LoggerLibrary.Enums;
using System.Collections.ObjectModel;


namespace _99.LoggerLibrary.Loggers
{
    public class Logger : ILogger
    {
        private readonly ICollection<IAppender> _appenders = new Collection<IAppender>();

        public Logger(params IAppender[] appenders)
        {

            foreach (var logger in appenders)
            {
                _appenders.Add(logger);
            }
        }

        public void Fatal(string timeStamp, string message)
        {
            Log(timeStamp, message, ReportLevel.Fatal);
        }

        public void Critical(string timeStamp, string message)
        {
            Log(timeStamp, message, ReportLevel.Critical);
        }

        public void Error(string format, string message)
        {
            Log(format, message, ReportLevel.Error);
        }

        public void Warning(string timeStamp, string message)
        {
            Log(timeStamp, message, ReportLevel.Warning);
        }

        public void Info(string timeStamp, string message)
        {
            Log(timeStamp, message, ReportLevel.Info);
        }

        public void Log(string timeStamp, string message, ReportLevel logEntryImportance)
        {
            foreach (var appender in _appenders)
            {
                if (logEntryImportance >= appender.ReportLevel)
                {
                    appender.Append(timeStamp, message, logEntryImportance);
                }
            }
        }
    }
}
