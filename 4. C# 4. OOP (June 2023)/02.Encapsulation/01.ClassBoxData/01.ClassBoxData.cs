// 01. Class Box Data - StartUp

using _01.ClassBoxData;

double[] dim = new double[3];
dim[0] = double.Parse(Console.ReadLine()!);
dim[1] = double.Parse(Console.ReadLine()!);
dim[2] = double.Parse(Console.ReadLine()!);

try
{
    Box box = new Box(length: dim[0], width: dim[1], height: dim[2]);
    Console.WriteLine($"Surface Area - {box.SurfaceArea():F2}");
    Console.WriteLine($"Lateral Surface Area - {box.LateralSurfaceArea():F2}");
    Console.WriteLine($"Volume - {box.Volume():F2}");
}
catch (Exception ex)
{
    Console.WriteLine(ex.Message);
}