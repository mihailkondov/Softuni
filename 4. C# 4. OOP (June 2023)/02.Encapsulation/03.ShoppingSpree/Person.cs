// 03. Shopping Spree - Person

using System.Collections.ObjectModel;
using System.Text;

namespace _03.ShoppingSpree
{
    internal class Person
    {
        private string name;
        private decimal money;
        private bool valid = true;
        public Collection<Product> products = new Collection<Product>();

        public Person(string name, decimal money)
        {
            this.Name = name;
            this.Money = money;
        }

        public string Name
        {
            get => name;
            set
            {
                if (!string.IsNullOrWhiteSpace(value))
                {
                    name = value;
                }
                else
                {
                    valid = false;
                    throw new ArgumentNullException(nameof(value));
                }
            }
        }

        public decimal Money
        {
            get => money;
            set
            {
                if (value >= 0)
                {
                    money = value;
                }
                else
                {
                    valid = false;
                    throw new ArgumentOutOfRangeException();
                }
            }
        }

        public bool Valid { get => this.valid; }

        public void TryBuyProduct(Product product)
        {
            if (this.valid == false)
            {
                return;
            }

            if (product.Cost > this.Money)
            {
                Console.WriteLine($"{this.Name} can't afford {product.Name}");
            }
            else
            {
                this.products.Add(product);
                this.Money -= product.Cost;
                Console.WriteLine($"{this.name} bought {product.Name}");
            }
        }

        public void PrintPurchases()
        {
            if (valid)
            {
                Console.Write($"{this.name} - ");
                string rest;
                if (this.products.Any())
                {
                    StringBuilder sb = new StringBuilder();
                    foreach (var product in this.products)
                    {
                        sb.Append($"{product.Name}, ");
                    }
                    sb.Remove(sb.Length - 2, 2);
                    rest = sb.ToString();
                }
                else
                {
                    rest = "Nothing bought";
                }
                Console.WriteLine(rest);
            }
        }
    }
}
