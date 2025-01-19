// 10. Poke Mon

namespace _10.PokeMon
{
    public class PokeMon
    {
        public static void Main(string[] args)
        {
            int N = int.Parse(Console.ReadLine());
            int M = int.Parse(Console.ReadLine());
            int Y = int.Parse(Console.ReadLine());
            int[] result = Poke(N, M, Y);
            Console.WriteLine(result[0]); // remainder of N
            Console.WriteLine(result[1]); // pokes count
        }

        /// <summary>
        /// Calculates remaining strength and counts all pokes.
        /// </summary>
        /// <param name="n"></param>
        /// <param name="m"></param>
        /// <param name="y"></param>
        /// <returns>int[2] {N = remainder of N , pokeCount = number of pokes}</returns>
        public static int[] Poke(int n, int m, int y)
        {
            double fiftyPct = (double)n / (double)2;
            int pokeCount = 0;
            while (n >= m)
            {
                n -= m;
                if(y != 0)
                {
                    if (n == fiftyPct && n / y != 0)
                    {
                        n /= y;
                    }
                }

                pokeCount++;
            }

            int[] result = { n, pokeCount };
            return result;
        }
    }
}
