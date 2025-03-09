// 03. Telephony - Classes

using _03.Telephony.Models.Interfaces;

namespace _03.Telephony.Models
{
    public class StationaryPhone : ICallCapable
    {
        public string Call(string number)
        {
            return ($"Dialing... {number}");
        }
    }
}
