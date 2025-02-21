namespace _06.SpeedRacing
{
    internal class Car
    {
        public string model;
        public double fuelAmount;
        public double fuelConsPKM;
        public double travelleDistance;

        public Car(string model, double fuelAmount, double fuelConsPKM)
        {
            this.model = model;
            this.fuelAmount = fuelAmount;
            this.fuelConsPKM = fuelConsPKM;
            this.travelleDistance = 0;
        }

        public void TryDrive(double kilometers)
        {
            double fuelRequired = kilometers * this.fuelConsPKM;
            if (fuelRequired <= this.fuelAmount)
            {
                this.travelleDistance += kilometers;
                this.fuelAmount -= fuelRequired;
            }
            else
            {
                Console.WriteLine("Insufficient fuel for the drive");
            }
        }
    }
}
