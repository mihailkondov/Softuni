using _04.WildFarm.Models.Food;
using _04.WildFarm.Models.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04.WildFarm.Models.Animals.Non_abstract
{
    public class Hen : Bird
    {

        public Hen(string name, double weight, double wingSize) 
            : base(name, weight, wingSize)
        {

        }

        public override HashSet<string> GetDiet()
        {
            return new HashSet<string>() { nameof(Fruit), nameof(Meat), nameof(Seeds), nameof(Vegetable)};
        }

        public override string Sound()
        {
            return "Cluck";
        }
    }
}
