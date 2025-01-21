namespace _02.TaxCalculator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] dataset = Console.ReadLine()
                .Split(">>")
                .ToArray();
            decimal totalTaxes = 0;
            for (int i = 0; i < dataset.Length; i++)
            {
                string[] carData = dataset[i].Split(" ").ToArray();
                string cartype = carData[0];
                int years = int.Parse(carData[1]);
                int km = int.Parse(carData[2]);
                decimal thisCarsTax = 0;

                if (cartype == "family")
                {
                    int distanceEffect = km / 3000;
                    thisCarsTax = 50 - 5 * years + 12 * distanceEffect;
                    Console.WriteLine($"A {cartype} car will pay {thisCarsTax:F2} euros in taxes.");
                    totalTaxes += thisCarsTax;
                }
                else if (cartype == "heavyDuty")
                {
                    int distanceEffect = km / 9000;
                    thisCarsTax = 80 - 8 * years + 14 * distanceEffect;
                    Console.WriteLine($"A {cartype} car will pay {thisCarsTax:F2} euros in taxes.");
                    totalTaxes += thisCarsTax;
                }
                else if (cartype == "sports")
                {
                    int distanceEffect = km / 2000;
                    thisCarsTax = 100 - 9 * years + 18 * distanceEffect;
                    Console.WriteLine($"A {cartype} car will pay {thisCarsTax:F2} euros in taxes.");
                    totalTaxes += thisCarsTax;
                }
                else
                {
                    Console.WriteLine("Invalid car type.");
                }
            }
            Console.WriteLine($"The National Revenue Agency will collect {totalTaxes:F2} euros in taxes.");
        }
    }
}