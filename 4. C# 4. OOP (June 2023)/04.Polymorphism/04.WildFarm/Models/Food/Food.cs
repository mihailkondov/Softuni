using _04.WildFarm.Models.Interfaces;

namespace _04.WildFarm.Models.Food
{
    public abstract class Food : IEdible
    {

        protected Food(int quantity)
        {
            Quanity = quantity;
        }

        public int Quanity { get; set; }

    }
}
