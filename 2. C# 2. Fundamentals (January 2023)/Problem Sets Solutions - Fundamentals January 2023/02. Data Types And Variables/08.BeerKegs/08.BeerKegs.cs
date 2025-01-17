// 08. Beer Kegs

int n = int.Parse(Console.ReadLine());

double bigVolume = 0;
string bigModel = null;

for (int i = 0; i < n; i++)
{
    string model = Console.ReadLine();
    double radius = double.Parse(Console.ReadLine());
    int height = int.Parse(Console.ReadLine());
    double volume = Math.PI * Math.Pow(radius, 2) * height;
    if (volume > bigVolume)
    {
        bigVolume = volume;
        bigModel = model;
    }
}
Console.WriteLine(bigModel);
