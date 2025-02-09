// 11. Key Revolver

namespace _11.KeyRevolver
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Read input
            int bulletPrice = int.Parse(Console.ReadLine()); // [0 ... 100]
            int gunBarrelSize = int.Parse(Console.ReadLine()); // [1 ... 5000]
            Stack<int> bullets = new Stack<int>(Console.ReadLine().Split().Select(int.Parse)); // [1 ... 100]
            Queue<int> locks = new Queue<int>(Console.ReadLine().Split().Select(int.Parse)); // [1 ... 100]
            int intelligenceValue = int.Parse(Console.ReadLine());

            // Start shooting
            int cost = 0;
            int bulletsLeftInBarrel = gunBarrelSize;
            while (bullets.Any() && locks.Any())
            {
                int currentBullet = bullets.Pop();
                cost += bulletPrice;
                int currentLock = locks.Peek();
                if (currentBullet <= currentLock)
                {
                    Console.WriteLine("Bang!");
                    locks.Dequeue();
                }
                else
                {
                    Console.WriteLine("Ping!");
                }
                bulletsLeftInBarrel--;
                if (bulletsLeftInBarrel == 0 && bullets.Any())
                {
                    if (bullets.Count >= gunBarrelSize)
                    {
                        bulletsLeftInBarrel = gunBarrelSize;
                    }
                    else
                    {
                        bulletsLeftInBarrel = bullets.Count;
                    }

                    Console.WriteLine("Reloading!");
                }
            }

            if (locks.Count > 0)
            {
                Console.WriteLine($"Couldn't get through. Locks left: {locks.Count}");
            }
            else
            {
                int moneyEarned = intelligenceValue - cost;
                Console.WriteLine($"{bullets.Count} bullets left. Earned ${moneyEarned}");
            }
        }
    }
}
