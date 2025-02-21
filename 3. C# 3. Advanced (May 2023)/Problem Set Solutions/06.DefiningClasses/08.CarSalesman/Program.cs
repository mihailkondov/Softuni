namespace _08.CarSalesman
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine()!);
            Engine[] engines = new Engine[N];
            for (int i = 0; i < N; i++)
            {
                // {model} {power} {displacement} {efficiency}
                string[] input = Console.ReadLine()!
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .ToArray();
                string model = input[0];
                int power = int.Parse(input[1]);
                engines[i] = new Engine(model, power);
                if (input.Length >= 3)
                {
                    if (input[2].All(c => char.IsDigit(c)))
                    {
                        int displacement = int.Parse(input[2]);
                        engines[i].Displacement = displacement;
                    }
                    else
                    {
                        string efficiency = input[2];
                        engines[i].Efficiency = efficiency;
                    }
                }

                if (input.Length == 4)
                {
                    string efficiency = input[3];
                    engines[i].Efficiency = efficiency;
                }
            }
            int M = int.Parse(Console.ReadLine()!);
            Car[] cars = new Car[M];
            for (int i = 0; i < M; i++)
            {
                // "{model} {engine} {weight} {color}".
                string[] input = Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .ToArray();
                string model = input[0];
                string engineModel = input[1];
                Engine engine = engines.First(e => e.Model == engineModel);
                cars[i] = new Car(model, engine);
                if (input.Length >= 3)
                {
                    if (input[2].All(c => char.IsDigit(c)))
                    {

                        int weight = int.Parse(input[2]);
                        cars[i].Weight = weight;
                    }
                    else
                    {
                        string color = input[2];
                        cars[i].Color = color;
                    }
                }

                if (input.Length == 4)
                {
                    string color = input[3];
                    cars[i].Color = color;
                }
            }

            foreach (var car in cars)
            {
                Console.WriteLine(car);
            }
        }
    }
}
