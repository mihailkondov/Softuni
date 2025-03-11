// 04. Pizza Calories - Pizza

namespace _04.PizzaCalories.Classes
{
    public class Pizza
    {
        private const string NameLengthError = "Pizza name should be between 1 and 15 symbols.";
        private const string TooManyToppingsError = "Number of toppings should be in range [0..10].";
        private List<Topping> _toppings;
        private string name = String.Empty;

        public Pizza(string name)
        {
            this.Name = name;
            this._toppings = new List<Topping>();
        }

        // Properties
        public string Name
        {
            get => name;
            private set
            {
                if (value.Length < 1 || value.Length > 15)
                {
                    throw new ArgumentException(NameLengthError);
                }

                this.name = value;
            }
        }
        public int NumberOfToppings { get => _toppings.Count; }
        public double TotalCalories { get => CalculateCalories(); }

        public Dough? Dough { private get; set; }


        // Methods
        public void AddTopping(Topping topping)
        {
            if (_toppings.Count >= 10)
            {
                throw new InvalidOperationException(TooManyToppingsError);
            }
        
            _toppings.Add(topping);
        }

        private double CalculateCalories()
        {
            if (Dough == null)
            {
                // This one is not part of the task specification. I added it for my own comfort.
                throw new Exception("Attempted to access Dough properties when Dough is set to null or not initialized");
            }

            double result = Dough.Calories;
            foreach (var topping in this._toppings)
            {
                result += topping.Calories();
            }
            return result;
        }
    }
}
