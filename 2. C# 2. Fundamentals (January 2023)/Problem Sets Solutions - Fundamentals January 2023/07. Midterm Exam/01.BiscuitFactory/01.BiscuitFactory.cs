namespace _21.MidtermExam
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int biscuitsWorkerDay = int.Parse(Console.ReadLine());
            int workers = int.Parse(Console.ReadLine());    
            long competitorMonthlyProduction = int.Parse(Console.ReadLine());

            int myProduction = 0;
            for (int i = 1; i <= 30; i++)
            {
                if(i % 3 == 0)
                {
                    myProduction += biscuitsWorkerDay * workers * 3 / 4;
                }
                else
                {
                    myProduction += biscuitsWorkerDay * workers;
                }
            }
            long difference = Math.Abs(myProduction - competitorMonthlyProduction);
            double percentage = 100 * (double)difference / competitorMonthlyProduction;

            Console.WriteLine($"You have produced {myProduction} biscuits for the past month.");
            if(myProduction > competitorMonthlyProduction)
            {
                Console.WriteLine($"You produce {percentage:F2} percent more biscuits.");
            }
            else
            {
                Console.WriteLine($"You produce {percentage:F2} percent less biscuits.");
            }
        }
    }
}