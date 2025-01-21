// 20. C# Fundamentals - Midterm Exam Preparation
// Link to contest on Judge:
// https://judge.softuni.org/Contests/4913/Mid-Exam-Preparation-2-RS

// 03. Numbers

namespace _03.Numbers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] numbers = Console.ReadLine()
                .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                .Select(int.Parse)
                .ToArray();
            double average = numbers.Average();
            List<int> topNumbers = new List<int>();
            foreach (int number in numbers)
            {
                if (number > average)
                {
                    topNumbers.Add(number);
                }
            }
            List<int> orderedNumbers = topNumbers.OrderByDescending(number => number).ToList();
            if (orderedNumbers.Count > 5)
            {
                for (int i = 0; i < 5; i++)
                {
                    Console.Write($"{orderedNumbers[i]}" + " ");
                }
            }
            else if (orderedNumbers.Count > 0)
            {
                string ortderedNumbersPrint = string.Join(" ", orderedNumbers);
                Console.WriteLine(ortderedNumbersPrint);
            }
            else
            {
                Console.WriteLine("No");
            }
        }
    }
}