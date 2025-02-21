namespace _06.SpeedRacing
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Car> cars = new List<Car>();
            int N = int.Parse(Console.ReadLine()!);
            for (int i = 0; i < N; i++)
            {
                // input is "{model} {fuelAmount} {fuelConsumptionFor1km}":
                string[] input = Console.ReadLine()!.Split(' '); 
                string model = input[0];
                double fuelAmount = double.Parse(input[1]);
                double fuelConsPKM = double.Parse(input[2]);
                Car car = new Car(model, fuelAmount, fuelConsPKM);
                cars.Add(car);
            }

            string drive;
            while((drive = Console.ReadLine()!).ToLower() != "end")
            {
                string[] cmdArg = drive.Split(' ').ToArray();
                string model = cmdArg[1];
                double amountOfKm = double.Parse(cmdArg[2]);

                cars.Where(x => x.model == model).First().TryDrive(amountOfKm);
            }

            foreach(Car car in cars )
            {
                Console.WriteLine($"{car.model} {car.fuelAmount:F2} {car.travelleDistance}"); 
            }
        }
    }
}