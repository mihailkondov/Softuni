// 01. Furniture

using System.Text.RegularExpressions;

namespace _01.Furniture
{
    internal class Program
    {
        static void Main(string[] args) //">>{furniture name}<<{price}!{quantity}"
        {
            List<string> furniture = new List<string>();
            double moneySpent = 0;
            string input;
            while ((input = Console.ReadLine()) != "Purchase")
            {
                //Console.WriteLine(input);
                Regex regex = new Regex(@">>(?<item>[A-Za-z]+)<<(?<price>\d+\.\d+|\d+)!(?<quantity>\d+)");
                Match match = regex.Match(input);
                if (match.Success)
                {
                    string name = match.Groups[1].ToString();
                    double price = double.Parse(match.Groups[2].ToString());
                    int quantity = int.Parse(match.Groups[3].ToString());
                    //Console.WriteLine($"Name: {name}\nPrice: {price}\nQuanity: {quantity}");
                    moneySpent += price * quantity;
                    furniture.Add(name);
                }
            }


            Console.WriteLine("Bought furniture:");
            foreach (string item in furniture)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine($"Total money spend: {moneySpent:F2}");
        }
    }
}