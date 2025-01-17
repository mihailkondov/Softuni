// 07. Water Overflow

int n = int.Parse(Console.ReadLine());
const int capacity = 255;
int waterInTheTank = 0;
for (int i = 0; i < n; i++)
{
    int addedWater = int.Parse(Console.ReadLine());
    if (waterInTheTank + addedWater <= 255)
    {
        waterInTheTank += addedWater;
    }
    else
    {
        Console.WriteLine("Insufficient capacity!");
    }
}
Console.WriteLine(waterInTheTank);