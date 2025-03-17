// 01. Square Root

double.TryParse(Console.ReadLine(), out double x);
try
{
    double sqrtX = Math.Sqrt(x);
    if (double.IsNaN(sqrtX))
    {
        throw new ArgumentException("Invalid number.");
    }
    Console.WriteLine(sqrtX);
}
catch (ArgumentException ex)
{
    Console.WriteLine(ex.Message);
}
finally
{
    Console.WriteLine("Goodbye.");
}