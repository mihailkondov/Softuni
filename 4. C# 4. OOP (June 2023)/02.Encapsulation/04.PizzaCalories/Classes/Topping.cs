// 04. Pizza Calories - Topping

namespace _04.PizzaCalories.Classes
{
    public class Topping
    {
        // Constants
        private const string InvalidToppingTypeMessage = "Cannot place {0} on top of your pizza.";
        private const string InvalidToppingWeightMessage = "{0} weight should be in the range [1..50].";
        private readonly Dictionary<string, double> ToppingsAndModifiers = new()
        {
            { "meat", 1.2},
            { "veggies", 0.8},
            { "cheese", 1.1},
            { "sauce", 0.9}
        };
        private const double BaseCaloriesPerGram = 2;

        // Fields
        string _type;
        double _grams;
        double _caloriesPerGram;
        double _modifier = 1;

        // Constructor
        public Topping(string type, double grams)
        {
            Type = type;
            Grams = grams;
            _caloriesPerGram = this.CalculateCaloriesPerGram();
        }

        // Properties
        private string Type
        {
            get => _type;
            set
            {
                string valueInLower = value.ToLower();
                if (ToppingsAndModifiers.ContainsKey(valueInLower))
                {
                    _modifier = ToppingsAndModifiers[valueInLower];
                }
                else
                {
                    throw new ArgumentException(string.Format(InvalidToppingTypeMessage, value));
                }

                this._type = value;
            }
        }

        private double Grams
        {
            get => _grams;
            set
            {
                if (value < 1 || value > 50)
                {
                    throw new ArgumentException(string.Format(InvalidToppingWeightMessage, Type));
                }

                _grams = value;
            }
        }

        public double CaloriesPerGram
        {
            get => _caloriesPerGram;
        }

        // Methods
        private double CalculateCaloriesPerGram()
        {
            double result = BaseCaloriesPerGram * _modifier;
            return result;
        }

        public double Calories()
        {
            return this._grams * CalculateCaloriesPerGram();
        }

    }
}
