// 04. Border Control

using _04.BorderControl.Models.Interfaces;

namespace _04.BorderControl.Models
{
    public class Citizen : ICheckable
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string ID { get; set; }
        public bool Check()
        {
            return false;
        }
    }
}
