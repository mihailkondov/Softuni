using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03.ShoppingSpree
{
    internal class Product
    {
        private string name;
        private decimal cost;

        public Product(string name, decimal cost)
        {
            this.Name = name;
            this.Cost = cost;
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
                    throw new ArgumentNullException();
                }
            }
        }

        public decimal Cost
        {
            get => cost;
            set
            {
                if (value >= 0)
                {
                    cost = value;
                }
                else
                {
                    throw new ArgumentOutOfRangeException();
                }
            }
        }
    }
}
