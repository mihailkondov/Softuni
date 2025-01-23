// 03. Orders

namespace _03.Orders
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, Product> products = new Dictionary<string, Product>();
            string input;
            while ((input = Console.ReadLine()) != "buy")
            {
                string[] cmdArgs = input.Split().ToArray();
                string name = cmdArgs[0];
                double price = double.Parse(cmdArgs[1]);
                int quantity = int.Parse(cmdArgs[2]);
                Product product = new Product(price, quantity);

                if (!products.ContainsKey(name))
                {
                    products.Add(name, product);
                }
                else
                {
                    products[name].Price = price;
                    products[name].Quantity += quantity;
                }
            }

            foreach (var p in products)
            {
                Console.WriteLine($"{p.Key} -> {p.Value.moneySpent():F2}");
            }
        }
    }

    class Product
    {
        public Product(double price, int quantity)
        {
            Price = price;
            Quantity = quantity;
        }
        public double Price { get; set; }
        public int Quantity { get; set; }

        public double moneySpent()
        {
            double result = this.Price * this.Quantity;
            return result;
        }
    }
}