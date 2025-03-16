using _04.WildFarm.Models.Food;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04.WildFarm.Models.Animals.Non_abstract
{
    public class Owl : Bird
    {
        public Owl(string name, double weight, double wingSize) 
            : base(name, weight, wingSize)
        {

        }

        public override HashSet<string> GetDiet()
        {
            return new HashSet<string>() { nameof(Meat) };
        }

        public override string Sound()
        {
            return "Hoot Hoot";
        }
    }
}
