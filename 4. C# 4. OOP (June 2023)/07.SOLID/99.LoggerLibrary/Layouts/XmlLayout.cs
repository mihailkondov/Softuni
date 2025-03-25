using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.Layouts.Interface;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _99.LoggerLibrary.Layouts
{
    public class XmlLayout : ILayout
    {
        public XmlLayout(string filePath)
        {
            FilePath = filePath + "logs.xml";
        }

        public int MessagesAppended {  get; private set; }
        public string FilePath { get ; }

        public string Log(string format, ReportLevel reportLevel, string message)
        {
            MessagesAppended++;

            string dateTimeNow = DateTime.Now.ToString(format, CultureInfo.InvariantCulture);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine($"<date>{dateTimeNow}</date>");
            sb.AppendLine($"<level>{reportLevel}</level>");
            sb.AppendLine($"<message>{message}</message>");
            return sb.ToString();
        }
    }
}
