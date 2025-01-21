// 20. C# Fundamentals - Midterm Exam Preparation
// Link to contest on Judge:
// https://judge.softuni.org/Contests/4913/Mid-Exam-Preparation-2-RS

// 01. Black Flag

namespace _01.BlackFlag
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int days = int.Parse(Console.ReadLine());
            int plunderPerDay = int.Parse(Console.ReadLine());
            double expecedPlunder = double.Parse(Console.ReadLine());

            double totalPlunder = 0;

            for (int i = 1; i <= days; i++)
            {
                totalPlunder += plunderPerDay;
                if (i % 3 == 0)
                {
                    totalPlunder += plunderPerDay * 0.5;
                }

                if (i % 5 == 0)
                {
                    totalPlunder *= 0.7;
                }
            }

            if (totalPlunder >= expecedPlunder)
            {
                Console.WriteLine($"Ahoy! {totalPlunder:F2} plunder gained.");
            }
            else
            {
                double percentage = 100 * totalPlunder / expecedPlunder;
                Console.WriteLine($"Collected only {percentage:F2}% of the plunder.");
            }
        }
    }
}