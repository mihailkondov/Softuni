// 06. Food Shortage

using _06.FoodShortage.Models.Interfaces;

namespace _06.FoodShortage.Models
{
    public class Rebel : IBuyer
    {
        public Rebel(string name, int age, string group)
        {
            Name = name;
            Age = age;
            Group = group;
            Food = 0;
        }

        public int Food { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string Group { get; set; }

        public void BuyFood()
        {
            this.Food += 5;
        }
    }
}
