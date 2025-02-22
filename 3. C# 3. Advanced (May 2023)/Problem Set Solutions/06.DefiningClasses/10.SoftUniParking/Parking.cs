using System.Collections.Generic;
using System.Linq;

namespace SoftUniParking
{
    internal class Parking
    {
        // Fields
        // For this exercise the fields' names are required to be exactly like this.
        // Changing them will cause failure to pass the tests in Judge.
        private int capacity; 
        private ICollection<Car> cars;

        // Constructors
        public Parking(int capacity)
        {
            this.capacity = capacity;
            cars = new List<Car>(capacity);
        }

        // Properties
        public int Count { get => cars.Count; }

        // Methods
        public string AddCar(Car car)
        {
            if (this.cars.Any(c => c.RegistrationNumber == car.RegistrationNumber))
            {
                return "Car with that registration number, already exists!";
            }

            if (cars.Count == capacity)
            {
                return "Parking is full!";
            }

            cars.Add(car);
            return $"Successfully added new car {car.Make} {car.RegistrationNumber}";
        }

        public string RemoveCar(string registrationNumber)
        {
            Car carToRemove = cars.FirstOrDefault(c => c.RegistrationNumber == registrationNumber);

            if (carToRemove == null)
            {
                return "Car with that registration number, doesn't exist!";
            }
            else
            {
                cars.Remove(carToRemove);
                return $"Successfully removed {registrationNumber}";
            }
        }

        public Car GetCar(string registrationNumber)
        {
            return cars.FirstOrDefault(c => c.RegistrationNumber == registrationNumber);
        }

        public void RemoveSetOfRegistrationNumber(List<string> RegistrationNumbers)
        {
            foreach (string registrationNumber in RegistrationNumbers)
            {
                Car car = GetCar(registrationNumber);
                if(car != null)
                {
                    cars.Remove(car);
                }
            }
        }
    }
}
