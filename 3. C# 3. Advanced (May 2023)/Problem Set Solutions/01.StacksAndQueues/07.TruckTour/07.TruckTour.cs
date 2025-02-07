namespace _07.TruckTour
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine()); // petrol stations on the route
            int fuel = 0;
            int start = 0;
            Queue<int> distances = new Queue<int>();

            for (int i = 1; i < N + 1; i++)
            {
                int[] ints = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
                int refill = ints[0];
                int distance = ints[1];
                fuel += refill;
                if (fuel >= distance)
                {
                    distances.Enqueue(distance);
                    fuel -= distance;
                }
                else
                {
                    distances.Clear();
                    fuel = 0;
                    start = i;
                }
            }

            Console.WriteLine(start);
        }
    }
}