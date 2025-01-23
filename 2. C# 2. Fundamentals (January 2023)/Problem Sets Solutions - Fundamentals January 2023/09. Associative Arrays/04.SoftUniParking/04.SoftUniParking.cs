// 04. SoftUni Parking

namespace _04.SoftUniParking
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, string> cars = new Dictionary<string, string>();
            int n = int.Parse(Console.ReadLine());
            for (int i = 0; i < n; i++)
            {
                string[] cmdArgs = Console.ReadLine().Split().ToArray();
                if (cmdArgs[0] == "register")
                {
                    string username = cmdArgs[1];
                    string licensePlate = cmdArgs[2];
                    if (!cars.ContainsKey(username))
                    {
                        cars.Add(username, licensePlate);
                        Console.WriteLine($"{username} registered {cars[username]} successfully");
                    }
                    else
                    {
                        Console.WriteLine($"ERROR: already registered with plate number {cars[username]}");
                    }
                }
                else
                {
                    string username = cmdArgs[1];
                    if (cars.ContainsKey(username))
                    {
                        cars.Remove(username);
                        Console.WriteLine($"{username} unregistered successfully");
                    }
                    else
                    {
                        Console.WriteLine($"ERROR: user {username} not found");
                    }
                }
            }

            foreach (var instance in cars)
            {
                Console.WriteLine($"{instance.Key} => {instance.Value}");
            }
        }
    }
}