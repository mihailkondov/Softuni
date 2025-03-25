using _01.Logger.Core.Interfaces;
using _01.Logger.Factories;
using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.Loggers.Interface;

namespace _01.Logger.Core
{
    internal class Engine : IEngine
    {
        public void Run()
        {
            int N = int.Parse(Console.ReadLine()!);
            ICollection<IAppender> appenders = new List<IAppender>();
            for (int i = 0; i < N; i++)
            {
                string[] appenderInfo = Console.ReadLine()!.Split(' ');
                IAppender appender = AppenderFactory.CreateAppender(appenderInfo);
                appenders.Add(appender);
            }

            ILogger logger = new _99.LoggerLibrary.Loggers.Logger(appenders.ToArray());

            string input = string.Empty;
            while ((input = Console.ReadLine()!) != "END")
            {
                string[] tokens = input.Split('|');
                string level = tokens[0];
                string dateFormat = tokens[1];
                string message = tokens[2];

                logger.Log(dateFormat, message, Enum.Parse<ReportLevel>(level, ignoreCase: true));
            }

            Console.WriteLine("Logger info");
            foreach (var appender in appenders)
            {
                Console.WriteLine(appender);
            }
        }
    }
}
