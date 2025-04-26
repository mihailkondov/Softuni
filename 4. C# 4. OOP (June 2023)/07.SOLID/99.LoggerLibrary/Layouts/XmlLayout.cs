using _99.LoggerLibrary.Enums;
using _99.LoggerLibrary.Layouts.Interface;
using System.Globalization;
using System.Text;

namespace _99.LoggerLibrary.Layouts
{
    public class XmlLayout : ILayout
    {
        public XmlLayout(string filePath)
        {
            FilePath = filePath + "logs.xml";
            Size = 0;
        }

        public int MessagesAppended {  get; private set; }
        public string FilePath { get ; }
        public int Size { get; set; }

        public string Log(string timeStamp, ReportLevel reportLevel, string message)
        {
            MessagesAppended++;

            string dateTimeNow = timeStamp.ToString(Utils.DateFormat.StandardDate, CultureInfo.InvariantCulture);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<log>");
            sb.AppendLine($"<date>{timeStamp}</date>");
            sb.AppendLine($"<level>{reportLevel}</level>");
            sb.AppendLine($"<message>{message}</message>");
            sb.AppendLine("</log>");



            return sb.ToString();
        }
    }
}
