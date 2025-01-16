// 01. Basic Stack Operations

int age = int.Parse(Console.ReadLine());
switch (age)
{
    case >= 0 and <= 2:
        Console.WriteLine("baby");
        break;
    case >= 3 and <= 13:
        Console.WriteLine("child");
        break;
    case >= 14 and <= 19:
        Console.WriteLine("teenager");
        break;
    case >= 20 and <= 65:
        Console.WriteLine("adult");
        break;
    default:
        Console.WriteLine("elder");
        break;
}

