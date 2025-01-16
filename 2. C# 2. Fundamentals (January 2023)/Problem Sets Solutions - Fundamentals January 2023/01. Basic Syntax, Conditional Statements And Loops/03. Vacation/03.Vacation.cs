// 03. Vacation

int people = int.Parse(Console.ReadLine());
string kind = Console.ReadLine();
string weekday = Console.ReadLine();
decimal priceperperson = 0m;
decimal price;

if (weekday == "Friday")
{
    if (kind == "Students")
    {
        priceperperson = 8.45m;
    }
    else if (kind == "Business")
    {
        priceperperson = 10.9m;
    }
    else if (kind == "Regular")
    {
        priceperperson = 15.00m;
    }
}
else if (weekday == "Saturday")
{
    if (kind == "Students")
    {
        priceperperson = 9.80m;
    }
    else if (kind == "Business")
    {
        priceperperson = 15.6m;
    }
    else if (kind == "Regular")
    {
        priceperperson = 20.00m;
    }
}
else if (weekday == "Sunday")
{
    if (kind == "Students")
    {
        priceperperson = 10.46m;
    }
    else if (kind == "Business")
    {
        priceperperson = 16.00m;
    }
    else if (kind == "Regular")
    {
        priceperperson = 22.50m;
    }
}


price = people * priceperperson;

if (people >= 30 && kind == "Students")
{
    price = price * 0.85m;
}

if (people >= 100 && kind == "Business")
{
    people -= 10;
    price = people * priceperperson;
}

if (people >= 10 && people <= 20 && kind == "Regular")
{
    price *= 0.95m;
}

Console.WriteLine($"Total price: {price:F2}");

