// 06. Vehicle Catalogue

namespace _06.VehicleCatalogue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Populate catalogue
            List<Vehicle> vehicles = new List<Vehicle>();
            string input;
            while ((input = Console.ReadLine()) != "End")
            {
                string[] cmdArg = input.Split(' ');
                string type = cmdArg[0];
                string model = cmdArg[1];
                string color = cmdArg[2];
                int horsepower = int.Parse(cmdArg[3]);
                Vehicle current = new Vehicle(type, model, color, horsepower);
                vehicles.Add(current);
            }

            // Search catalogue
            while ((input = Console.ReadLine()) != "Close the Catalogue")
            {
                Vehicle current = vehicles.First(v => v.Model == input);
                current.PrintVehicle();
            }

            // Print average horsepower by category
            double carAvgHP = 0;
            if (vehicles.Where(v => v.Type == "Car").Any())
            {
                carAvgHP = Enumerable.Average(
                    vehicles.Where(v => v.Type == "Car")
                    .Select(v => v.Horsepower));
            }

            double truckAvgHP = 0;
            if (vehicles.Where(v => v.Type == "Truck").Any())
            {
                truckAvgHP = Enumerable.Average(
               vehicles.Where(v => v.Type == "Truck")
                   .Select(v => v.Horsepower));

            }

            Console.WriteLine($"Cars have average horsepower of: {carAvgHP:F2}.");
            Console.WriteLine($"Trucks have average horsepower of: {truckAvgHP:F2}.");
        }
    }

    public class Vehicle
    {
        // Fields
        private string _type;

        // Constructors
        public Vehicle(string type, string model, string color, int horsepower)
        {
            Type = type;
            Model = model;
            Color = color;
            Horsepower = horsepower;
        }

        // Properties
        public string Type
        {
            get => _type;
            set
            {
                if (value.ToLower() == "car")
                {
                    _type = "Car";
                }
                else if (value.ToLower() == "truck")
                {
                    _type = "Truck";
                }
                else
                {
                    throw new ArgumentException("Vehicle.Type is only allowed to have the values \"Car\" or \"Truck\".");
                }
            }
        }
        public string Model { get; set; }
        public string Color { get; set; }
        public int Horsepower { get; set; }

        // Methods
        public void PrintVehicle()
        {
            Console.WriteLine($"Type: {Type}");
            Console.WriteLine($"Model: {Model}");
            Console.WriteLine($"Color: {Color}");
            Console.WriteLine($"Horsepower: {Horsepower}");
        }
    }
}
