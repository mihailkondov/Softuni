// 06. Vehicle Catalogue
// This version uses a dictionary to search faster through the catalogue.

namespace _06.VehicleCatalogue_Dictionary
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Populate catalogue
            Dictionary<string, Vehicle> vehicles = new ();
            string input;
            while ((input = Console.ReadLine()) != "End")
            {
                string[] cmdArg = input.Split(' ');
                string type = cmdArg[0];
                string model = cmdArg[1];
                string color = cmdArg[2];
                int horsepower = int.Parse(cmdArg[3]);
                Vehicle current = new Vehicle(type, color, horsepower);

                vehicles[model] = current;
            }

            // Search catalogue
            while ((input = Console.ReadLine()) != "Close the Catalogue")
            {
                Vehicle current = vehicles[input];
                current.PrintVehicle(input);
            }

            // Print average horsepower by category
            double carAvgHP = 0;
            if (vehicles.Where(v => v.Value.Type == "Car").Any())
            {
                carAvgHP = Enumerable.Average(
                    vehicles.Where(v => v.Value.Type == "Car")
                    .Select(v => v.Value.Horsepower));
            }

            double truckAvgHP = 0;
            if (vehicles.Where(v => v.Value.Type == "Truck").Any())
            {
                truckAvgHP = Enumerable.Average(
               vehicles.Where(v => v.Value.Type == "Truck")
                   .Select(v => v.Value.Horsepower));

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
        public Vehicle(string type, string color, int horsepower)
        {
            Type = type;
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
        public string Color { get; set; }
        public int Horsepower { get; set; }

        // Methods
        public void PrintVehicle(string model)
        {
            Console.WriteLine($"Type: {Type}");
            Console.WriteLine($"Model: {model}");
            Console.WriteLine($"Color: {Color}");
            Console.WriteLine($"Horsepower: {Horsepower}");
        }
    }
}
