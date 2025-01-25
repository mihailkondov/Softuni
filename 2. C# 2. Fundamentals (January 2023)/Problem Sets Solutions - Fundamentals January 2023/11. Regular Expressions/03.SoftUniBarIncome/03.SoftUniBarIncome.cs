// 03. SoftUni Bar Income

using System.Text.RegularExpressions;

namespace _03.SoftUniBarIncome
{
    internal class Program
    {
        //%Customer%
        //<valid_prodUcT>
        // |4| <-integer, valid count
        // 123.234$ <-valid price
        //  '|', '$', '%' and '.'
        static void Main(string[] args) //%George%<Croissant>|2|10.3$ 
        {
            double income = 0;
            string input;
            while ((input = Console.ReadLine()) != "end of shift")
            {
                string pattern = @"%([A-Z][a-z]+)%.*<(\w+)>.*\|(\d+)\|(\d+\.{0,1}\d+)\$";
                Regex regex = new Regex(pattern);
                Match match = regex.Match(input);
                if (match.Success)
                {
                    string customerName = match.Groups[1].Value;
                    string product = match.Groups[2].Value;
                    int quantity = int.Parse(match.Groups[3].Value);
                    double price = double.Parse(match.Groups[4].Value);
                    double totalPrice = price * quantity;
                    Console.WriteLine($"{customerName:F2}: {product:F2} - {totalPrice:F2}");
                    income += totalPrice;
                }
            }
            Console.WriteLine($"Total income: {income:F2}");
        }
    }
}