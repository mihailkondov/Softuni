namespace AnimalFarm.Models
{
    public class Chicken
    {
        private const int MinAge = 0;
        private const int MaxAge = 15;

        protected string name;
        internal int age;

        internal Chicken(string name, int age)
        {
            this.Name = name;
            this.Age = age;
        }

        internal string Name
        {
            get
            {
                return this.name;
            }

            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new System.ArgumentNullException("Name cannot be empty.");

                }
                this.name = value;
            }
        }

        internal int Age
        {
            get
            {
                return this.age;
            }

            private protected set
            {
                if (value < MinAge || value > MaxAge)
                {
                    throw new System.ArgumentOutOfRangeException("Age should be between 0 and 15.");
                }
                this.age = value;
            }
        }

        internal double ProductPerDay
        {
            get
            {
                return this.CalculateProductPerDay();
            }
        }

        private double CalculateProductPerDay()
        {
            switch (this.Age)
            {
                case <= 3:
                    return 1.5;
                case <= 7:
                    return 2;
                case <=11:
                    return 1;
                default:
                    return 0.75;
            }
        }
    }
}
