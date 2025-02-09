// 12. Cups And Bottles

using System.Text;

namespace _12.CupsAndBottles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Queue<int> cups = new Queue<int>(Console.ReadLine().Split().Select(int.Parse));
            Stack<int> bottles = new Stack<int>(Console.ReadLine().Split().Select(int.Parse));

            int wastedWater = 0;
            int currentCup = cups.Dequeue();
            while (bottles.Any())
            {
                int currentBottle = bottles.Pop();

                int currentWaste = currentBottle - currentCup;
                currentCup -= currentBottle;
                if (currentCup <= 0)
                {
                    wastedWater += currentWaste;
                    if (cups.Count == 0 || bottles.Count == 0)
                    {
                        break;
                    }

                    currentCup = cups.Dequeue();
                }
            }

            if (bottles.Any())
            {
                StringBuilder sb = new StringBuilder("Bottles:");
                while (bottles.Any())
                {
                    sb.Append($" {bottles.Pop()}");
                }
                Console.WriteLine(sb.ToString());
            }
            else if (cups.Any())
            {
                Console.WriteLine($"Cups: {string.Join(" ", cups)}");
            }

            Console.WriteLine($"Wasted litters of water: {wastedWater}");
        }
    }
}
