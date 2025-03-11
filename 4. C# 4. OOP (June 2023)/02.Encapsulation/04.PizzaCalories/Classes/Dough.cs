// 04. Pizza Calories - Dough

namespace _04.PizzaCalories.Classes
{
    public class Dough
    {
        // Constants
        private const double BaseCaloriesPerGram = 2;
        private const string InvalidTypeOfDoughMessage = "Invalid type of dough.";
        private const string InvalidDoughWeight = "Dough weight should be in the range [1..200].";
        private readonly HashSet<string> _flourTypes = new HashSet<string>() { "white", "wholegrain" };
        private readonly HashSet<string> _bakingTechniques = new HashSet<string>() { "crispy", "chewy", "homemade" };

        // Fields
        private string _bakingTechnique;
        private string _flourType;
        private double _grams;
        private double _caloriesPerGram;
        private double _flourTypeModifier;
        private double _bakingTechniqueModifier;

        // Constructor
        public Dough(string flourType, string bakingTechnique, double grams)
        {
            BakingTechnique = bakingTechnique;
            FlourType = flourType;
            Grams = grams;
            SetModifiers();
            CaloriesPerGram = CalculateCaloriesPerGram();
            Calories = CaloriesPerGram * Grams;
        }

        // Properties
        private string FlourType
        {
            get => _flourType;
            set
            {
                if (_flourTypes.Contains(value.ToLower()))
                    _flourType = value;
                else
                    throw new ArgumentException(InvalidTypeOfDoughMessage);
            }
        }

        private string BakingTechnique
        {
            get => _bakingTechnique;
            set
            {
                if (_bakingTechniques.Contains(value.ToLower()))
                    _bakingTechnique = value;
                else
                    throw new ArgumentException(InvalidTypeOfDoughMessage);
            }
        }

        private double Grams
        {
            get => _grams;
            set
            {
                if (value < 1 || value > 200)
                {
                    throw new ArgumentException(InvalidDoughWeight);
                }

                _grams = value;
            }
        }

        public double CaloriesPerGram { get => _caloriesPerGram; private set => _caloriesPerGram = value; }

        public double Calories { get; private set; }

        // Methods
        private void SetModifiers()
        {
            switch (_flourType.ToLower())
            {
                case "white":
                    _flourTypeModifier = 1.5;
                    break;
                case "wholegrain":
                    _flourTypeModifier = 1;
                    break;
                default:
                    throw new ArgumentException();
            }

            switch (_bakingTechnique.ToLower())
            {
                case "crispy":
                    _bakingTechniqueModifier = 0.9;
                    break;
                case "chewy":
                    _bakingTechniqueModifier = 1.1;
                    break;
                case "homemade":
                    _bakingTechniqueModifier = 1.0;
                    break;
                default:
                    throw new ArgumentException();
            }
        }

        private double CalculateCaloriesPerGram()
        {
            double result = (BaseCaloriesPerGram) * _bakingTechniqueModifier * _flourTypeModifier;
            return result;
        }
    }
}
