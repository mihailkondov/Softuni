// Padwan Equipment

double johnsMoney = double.Parse(Console.ReadLine());
int studentsCount = int.Parse(Console.ReadLine());
double pLightsaber = double.Parse(Console.ReadLine());
double pRobes = double.Parse(Console.ReadLine());
double pBelts = double.Parse(Console.ReadLine());

double qLightsaber = Math.Ceiling(studentsCount * 1.1);
double freeBelts = Math.Floor(studentsCount / 6.0);

double moneyRequired = qLightsaber * pLightsaber
                       + (studentsCount - freeBelts) * pBelts
                       + pRobes * studentsCount;
if (moneyRequired <= johnsMoney)
{
    Console.WriteLine($"The money is enough - it would cost {moneyRequired:F2}lv.");
}
else
{
    Console.WriteLine($"John will need {moneyRequired - johnsMoney:F2}lv more.");
}