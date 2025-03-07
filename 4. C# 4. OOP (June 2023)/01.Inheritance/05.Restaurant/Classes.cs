// 01. Person - Classes

namespace Restaurant
{
    public class Product
    {
        public Product(string name, decimal price)
        {
            this.Name = name;
            this.Price = price;
        }

        public string Name { get; set; }
        public virtual decimal Price { get; set; }
    }

    public class Beverage : Product
    {
        public Beverage(string name, decimal price, double millimeters)
            : base(name, price)
        {
            this.Millimeters = millimeters;
        }

        public double Millimeters { get; set; }
    }

    public class HotBeverage : Beverage
    {
        public HotBeverage(string name, decimal price, double millimeters)
            : base(name, price, millimeters)
        {

        }
    }

    public class Tea : HotBeverage
    {
        public Tea(string name, decimal price, double millimeters)
            : base(name, price, millimeters)
        {

        }
    }

    public class Coffee : HotBeverage
    {
        private const double CoffeeMillimeters = 50;
        private const decimal CoffeePrice = 3.5m;

        public Coffee(string name, double caffeine)
            : base(name, CoffeePrice, CoffeeMillimeters)
        {
            Caffeine = caffeine;
        }

        public double Caffeine { get; set; }
    }

    public class ColdBeverage : Beverage
    {
        public ColdBeverage(string name, decimal price, double millimeters)
            : base(name, price, millimeters)
        {

        }
    }

    public class Food : Product
    {
        public Food(string name, decimal price, double grams)
            : base(name, price)
        {
            this.Grams = grams;
        }

        public double Grams { get; set; }
    }

    public class MainDish : Food
    {
        public MainDish(string name, decimal price, double grams)
            : base(name, price, grams)
        {

        }
    }

    public class Fish : MainDish
    {
        private const double FishGrams = 22;

        public Fish(string name, decimal price)
            : base(name, price, FishGrams)
        {

        }
    }

    public class Dessert : Food
    {
        public Dessert(string name, decimal price, double grams, double calories)
            : base(name, price, grams)
        {
            this.Calories = calories;
        }

        public double Calories { get; set; }
    }

    public class Cake : Dessert
    {
        private const double CakeGrams = 250;
        private const double CakeCalories = 1000;
        private const decimal CakePrice = 5m;

        public Cake(string name)
            : base(name, CakePrice, CakeGrams, CakeCalories)
        {

        }
    }

    public class Starter : Food
    {
        public Starter(string name, decimal price, double grams)
            : base(name, price, grams)
        {

        }
    }

    public class Soup : Starter
    {
        public Soup(string name, decimal price, double grams)
            : base(name, price, grams)
        {

        }
    }
}
