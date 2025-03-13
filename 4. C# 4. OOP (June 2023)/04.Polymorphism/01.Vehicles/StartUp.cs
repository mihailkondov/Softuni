using _04.Polymorphism.Models;

namespace _04.Polymorphism
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            string[] input1 = Console.ReadLine()!.Split(' ');
            double carFuelQuantity = double.Parse(input1[1]);
            double carFuelEfficiency = double.Parse(input1[2]);
            Car car = new Car(carFuelQuantity, carFuelEfficiency);

            string[] input2 = Console.ReadLine()!.Split(' ');
            double truckFuelQuantity = double.Parse(input2[1]);
            double truckFuelEfficiency = double.Parse(input2[2]);
            Truck truck = new Truck(truckFuelQuantity, truckFuelEfficiency);

            int N = int.Parse(Console.ReadLine()!);
            for (int i = 0; i < N; i++)
            {
                string[] input = Console.ReadLine()!.Split(' ');
                string command = input[0];
                string vehicleType = input[1];
                double parameter = double.Parse(input[2]);

                Vehicle vehicle;
                if (vehicleType == "Car")
                {
                    vehicle = car;
                }
                else if (vehicleType == "Truck")
                {
                    vehicle = truck;
                }
                else
                {
                    throw new ArgumentException("Vehicles can only be car and truck.");
                }

                if (command == "Drive")
                {
                    vehicle.Drive(parameter);
                }
                else if (command == "Refuel")
                {
                    vehicle.Refuel(parameter);
                }
            }

            Console.WriteLine($"Car: {car.FuelQuantity:F2}");
            Console.WriteLine($"Truck: {truck.FuelQuantity:F2}");
        }
    }
}