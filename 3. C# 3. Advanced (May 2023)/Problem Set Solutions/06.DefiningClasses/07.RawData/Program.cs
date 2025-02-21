namespace _07.RawData
{
    class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());

            List<Car> cars = new List<Car>();
            string[] input;
            for (int i = 0; i < N; i++)
            {
                // "{model} {engineSpeed} {enginePower} {cargoWeight} {cargoType} {tire1Pressure} { tire1Age} { tire2Pressure}{ tire2Age}{ tire3Pressure}{ tire3Age}{ tire4Pressure}{ tire4Age}"
                input = Console.ReadLine().Split();

                string model = input[0];
                int engineSpeed = int.Parse(input[1]);
                int enginePower = int.Parse(input[2]);
                int cargoWeight = int.Parse(input[3]);
                string cargoType = input[4];

                Engine engine = new Engine(engineSpeed, enginePower);
                Cargo cargo = new Cargo(cargoType, cargoWeight);
                Tire[] tires = new Tire[4];
                for (int j = 5, k = 0; k < 4; k++)
                {
                    double tirePressure = double.Parse(input[j++]);
                    int tireAge = int.Parse(input[j++]);
                    Tire tire = new Tire(tireAge, tirePressure);
                    tires[k] = tire;
                }
                Car car = new Car(model, engine, cargo, tires);
                cars.Add(car);
            }

            string command = Console.ReadLine(); // Either "fragile" or "flammable"

            IEnumerable<string>? modelsToPrint;
            if (command == "fragile")
            {
                modelsToPrint = cars
                    .Where(c =>
                        c.Cargo.Type == command &&
                        c.Tires.Any(t => t.Pressure < 1))
                    .Select(c => c.Model);
            }
            else if (command == "flammable")
            {
                modelsToPrint = cars.Where(c => c.Cargo.Type == command && c.Engine.Power > 250)
                    .Select(c => c.Model);
            }
            else
            {
                throw new Exception("Invalid command");
            }

            Console.WriteLine(string.Join(Environment.NewLine, modelsToPrint));
        }
    }
}