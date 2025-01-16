// 07. Vending Machine

double sum = 0;
string input;
do
{
    input = Console.ReadLine();
    bool isDouble = double.TryParse(input, out double coin);
    if (isDouble)
    {

        if (coin == 0.1 || coin == 0.2 || coin == 0.5 || coin == 1 || coin == 2)
        {
            sum += coin;
        }
        else
        {
            Console.WriteLine($"Cannot accept {coin}");
        }
    }
}
while (input != "Start");

while (input != "end")
{
    input = Console.ReadLine().ToLower();
    switch (input)
    {
        case "nuts":
            if (sum - 2 >= 0)
            {
                sum -= 2.0;
                Console.WriteLine($"Purchased {input}");
            }
            else
            {
                Console.WriteLine("Sorry, not enough money");
            }
            break;
        case "water":
            if (sum - 0.7 >= 0)
            {
                sum -= 0.7;
                Console.WriteLine($"Purchased {input}");

            }
            else
            {
                Console.WriteLine("Sorry, not enough money");
            }
            break;
        case "crisps":
            if (sum - 1.5 >= 0)
            {
                sum -= 1.5;
                Console.WriteLine($"Purchased {input}");

            }
            else
            {
                Console.WriteLine("Sorry, not enough money");
            }

            break;
        case "soda":

            if (sum - 0.8 >= 0)
            {
                sum -= 0.8;
                Console.WriteLine($"Purchased {input}");

            }
            else
            {
                Console.WriteLine("Sorry, not enough money");
            }
            break;
        case "coke":
            if (sum - 1.0 >= 0)
            {
                Console.WriteLine($"Purchased {input}");
                sum -= 1.0;

            }
            else
            {
                Console.WriteLine("Sorry, not enough money");
            }
            break;
        case "end":
            break;
        default:
            Console.WriteLine("Invalid product");
            break;
    }
}

Console.WriteLine($"Change: {sum:F2}");
