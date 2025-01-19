// 11. Snowballs

using System.Numerics;

namespace _11.Snowballs
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int[] bestSnowball = new int[3] { 0, 0, 0 };
            BigInteger maxScore = n > 0 ? -1 : 0;

            for (int i = 0; i < n; i++)
            {
                int snowballSnow = int.Parse(Console.ReadLine());
                int snowballTime = int.Parse(Console.ReadLine());
                int snowballQuality = int.Parse(Console.ReadLine());

                BigInteger currentScore = BigInteger.Pow((snowballSnow / snowballTime), snowballQuality);
                if (currentScore > maxScore)
                {
                    maxScore = currentScore;
                    bestSnowball = new[] { snowballSnow, snowballTime, snowballQuality };
                }
            }

            Console.WriteLine($"{bestSnowball[0]} : {bestSnowball[1]} = {maxScore} ({bestSnowball[2]})");
        }
    }
}
