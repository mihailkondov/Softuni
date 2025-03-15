using _09.ExplicitIntefaces;
using _09.ExplicitIntefaces.Interfaces;

List<Citizen> citizens = new List<Citizen>();
string input = string.Empty;
while ((input = Console.ReadLine()!) != "End")
{
    string[] tokens = input.Split(' ', StringSplitOptions.RemoveEmptyEntries);
    string name = tokens[0];
    string country = tokens[1];
    int age = int.Parse(tokens[2]);
    Citizen citizen = new Citizen(name, country, age);
    citizens.Add(citizen);
}

foreach (var citizen in citizens)
{
    //IResident resident = citizen;
    //IPerson person = citizen;
    Console.WriteLine(((IPerson)citizen).GetName());
    Console.WriteLine(((IResident)citizen).GetName());
}

