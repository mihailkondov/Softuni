namespace _05.FashionBoutique
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Stack<int> clothes = new (Console.ReadLine().Split(' ').Select(int.Parse));
            int rack = int.Parse(Console.ReadLine());
            int racksUsed = 0;
            int rackSum = 0;
            if (clothes.Any())
            {
                racksUsed++;
            }

            while (clothes.Any())
            {
                if(rackSum + clothes.Peek() > rack) 
                {
                    racksUsed++;
                    rackSum = clothes.Peek();
                }
                else
                {
                    rackSum += clothes.Peek();
                }
                clothes.Pop();
            }

            Console.WriteLine(racksUsed);
        }
    }
}