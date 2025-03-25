using _99.LoggerLibrary.Appenders;
using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.Layouts.Interface;

namespace _01.Logger.Factories
{
    internal class AppenderFactory
    {
        public static IAppender CreateAppender(string[] appenderInfo, string logFilesLocation = @"../../../")
        {
            string type = appenderInfo[0];
            string layoutType = appenderInfo[1];
            ReportLevel reportLevel;
            if (appenderInfo.Length == 3)
            {
                reportLevel = Enum.Parse<ReportLevel>(appenderInfo[2], ignoreCase: true);
            }
            else
            {
                reportLevel = ReportLevel.Info;
            }

            ILayout layout = LayoutFactory.CreateLayout(layoutType, logFilesLocation);
            logFilesLocation = layout.FilePath;

            IAppender appender;

            if (type == "ConsoleAppender")
            {
                return new ConsoleAppender(layout);
            }
            else if (type == "FileAppender")
            {
                return new FileAppender(layout, logFilesLocation);
            }
            
            throw new InvalidOperationException($"Type {type} is not registered in the {nameof(AppenderFactory)} class");

        }
    }
}
