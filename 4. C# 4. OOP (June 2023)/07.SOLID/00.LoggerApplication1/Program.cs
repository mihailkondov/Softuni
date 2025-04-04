// 01. Logger 
// This is a demonstration.

using _99.LoggerLibrary.Appenders;
using _99.LoggerLibrary.Loggers;
using _99.LoggerLibrary.Loggers.Interface;
using _99.LoggerLibrary.Appenders.Interface;
using _99.LoggerLibrary.Layouts.Interface;
using _99.LoggerLibrary.Layouts;

string logFilePath = "../../../logs.txt";
ILayout simpleLayout = new SimpleLayout(logFilePath);
IAppender consoleAppender = new ConsoleAppender(simpleLayout);
ILogger logger = new Logger(consoleAppender);
logger.Error("3/26/2015 2:08:11 PM", "Errorparsing JSON.");
logger.Info("3/26/2015 2:08:11 PM", "User Pesho successfully registered.");
logger.Warning("M/d/yyyy h:mm:ss tt", "Is my datetime format wrong?");
