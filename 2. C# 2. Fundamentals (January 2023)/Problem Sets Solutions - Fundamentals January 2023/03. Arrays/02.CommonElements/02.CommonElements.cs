// 02.Common Elements

string a = Console.ReadLine();
string b = Console.ReadLine();

string[] elementsA = a.Split(" ").ToArray();
string[] elementsB = b.Split(" ").ToArray();

string output = "";

foreach (string elementA in elementsA)
{
    foreach (string elementB in elementsB)
    {
        if (elementA == elementB)
        {
            output += elementA + " ";
        }
    }
}
Console.WriteLine(output);