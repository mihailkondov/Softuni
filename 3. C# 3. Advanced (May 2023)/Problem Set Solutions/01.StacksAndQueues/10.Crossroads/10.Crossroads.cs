// 10. Crossroads

namespace _10.Crossroads
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int greenLightMax = int.Parse(Console.ReadLine());
            int freePassMax = int.Parse(Console.ReadLine());
            int greenLightRemaining = greenLightMax;
            int freePassRemaining = freePassMax;
            int carsPassed = 0;

            Queue<string> queue = new Queue<string>();
            string input = string.Empty;
            bool crash = false;
            while ((input = Console.ReadLine()) != "END" && !crash)
            {
                if (input == "green")
                {
                    greenLightRemaining = greenLightMax;
                    freePassRemaining = freePassMax;

                    // cars pass
                    while (greenLightRemaining > 0 && queue.Any())
                    {
                        string currentCar = queue.Dequeue();
                        for (int i = 0; i < currentCar.Length; i++)
                        {
                            if (greenLightRemaining > 0)
                                greenLightRemaining--;
                            else
                                freePassRemaining--;

                            if (freePassRemaining < 0)
                            {
                                Console.WriteLine("A crash happened!");
                                Console.WriteLine($"{currentCar} was hit at {currentCar[i]}.");
                                crash = true;
                                break;
                            }
                        }
                        carsPassed++;

                        if (crash)
                        {
                            break;
                        }
                    }
                }
                else
                {
                    queue.Enqueue(input);
                }

                if (crash)
                {
                    break;
                }
            }

            if (!crash)
            {
                Console.WriteLine("Everyone is safe.");
                Console.WriteLine($"{carsPassed} total cars passed the crossroads.");
            }
        }
    }
}
