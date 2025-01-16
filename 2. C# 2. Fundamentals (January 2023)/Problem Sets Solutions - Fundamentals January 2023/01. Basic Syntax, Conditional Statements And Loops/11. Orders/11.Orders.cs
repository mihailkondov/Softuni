// 11. Orders

int numberOfOrders = int.Parse(Console.ReadLine());
double pTotal = 0;
for (int i = 0; i < numberOfOrders; i++)
{
    double pCapsule = double.Parse(Console.ReadLine());
    int days = int.Parse(Console.ReadLine());
    int qCapsule = int.Parse(Console.ReadLine());

    double price = pCapsule * qCapsule * days;
    pTotal += price;

    Console.WriteLine($"The price for the coffee is: ${price:F2}");
}
Console.WriteLine($"Total: ${pTotal:F2}");