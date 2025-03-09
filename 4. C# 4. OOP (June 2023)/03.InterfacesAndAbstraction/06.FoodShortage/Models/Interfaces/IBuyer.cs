// 06. Food Shortage

namespace _06.FoodShortage.Models.Interfaces
{
    public interface IBuyer
    {
        public int Food { get; set; }
        public void BuyFood();
        public string Name { get; }
    }
}
