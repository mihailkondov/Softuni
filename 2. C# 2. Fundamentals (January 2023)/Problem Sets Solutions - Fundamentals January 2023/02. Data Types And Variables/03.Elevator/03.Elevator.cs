// 03. Elevator

int n = int.Parse(Console.ReadLine()); // persons
int p = int.Parse(Console.ReadLine()); // capacity
int courses;

if (n % p == 0)
{
    courses = n / p;
}
else
{
    courses = n / p + 1;
}

Console.WriteLine(courses);