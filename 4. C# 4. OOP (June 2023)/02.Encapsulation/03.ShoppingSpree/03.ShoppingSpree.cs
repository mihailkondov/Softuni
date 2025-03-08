// 03. Shopping Spree - StartUp

namespace _03.ShoppingSpree
{
    internal class StartUp
    {
        static void Main(string[] args)
        {
            // this part adds people in a dictionary
            string[] peopleInput = Console.ReadLine().Split(';', StringSplitOptions.RemoveEmptyEntries);
            if (peopleInput.Length == 0)
            {
                Console.WriteLine("Name cannot be empty");
                return;
            }

            Dictionary<string, Person> persons = new Dictionary<string, Person>();
            foreach (string sperson in peopleInput)
            {
                string[] asperson = sperson.Split('=');
                string name = asperson[0];
                decimal moneys = decimal.Parse(asperson[1]);
                try
                {
                    persons.Add(name, new Person(name, moneys));
                }
                catch (ArgumentNullException ex)
                {
                    Console.WriteLine("Name cannot be empty");
                    return;
                }
                catch (ArgumentOutOfRangeException ex)
                {
                    Console.WriteLine("Money cannot be negative");
                    return;
                }
            }

            // this part adds the types of products in a list
            string[] productsInput = Console.ReadLine().Split(';', StringSplitOptions.RemoveEmptyEntries);
            Dictionary<string, Product> products = new Dictionary<string, Product>();
            foreach (string sproduct in productsInput)
            {
                string[] asproduct = sproduct.Split('=');
                string name = asproduct[0];
                decimal cost = decimal.Parse(asproduct[1]);
                try
                {
                    products.Add(name, new Product(name, cost));
                }
                catch (ArgumentNullException ex)
                {
                    Console.WriteLine("Name cannot be empty");
                    return;
                }
                catch (ArgumentOutOfRangeException ex)
                {
                    Console.WriteLine("Money cannot be negative");
                    return;
                }
            }

            // this is the part where people start buying things
            string command;
            while ((command = Console.ReadLine()) != "END")
            {
                string[] cmdArgs = command.Split(" ");
                string personName = cmdArgs[0];
                string productName = cmdArgs[1];

                persons[personName].TryBuyProduct(products[productName]);
            }

            //this part prints the people with their bought products
            foreach (var person in persons)
            {
                person.Value.PrintPurchases();
            }
        }
    }
}