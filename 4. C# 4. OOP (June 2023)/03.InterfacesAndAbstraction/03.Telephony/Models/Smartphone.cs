// 03. Telephony - Classes

using _03.Telephony.Models.Interfaces;

namespace _03.Telephony.Models
{
    public class Smartphone : ICallCapable, IWebsurfingCapable
    {
        public string Call(string number)
        {
            return ($"Calling... {number}");
        }

        public string Browse(string URL)
        {
            return ($"Browsing: {URL}!");
        }
    }
}
