using System;

namespace Example7_Schoool_Of_Exclusion
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string name = Console.ReadLine();
            int i = 0;
            double score = 0;
            bool kusan = false;
            while (i<12)
            {
                double grade = double.Parse(Console.ReadLine());
            
                if (grade >= 4)
                {   
                    i++;
                    score += grade;
                }
                else if(kusan==false)
                {
                    kusan = true;
                }
                else
                {
                    Console.WriteLine($"{name} has been excluded at {i+1} grade");
                }
            }
            double average = score / 12;
            Console.WriteLine($"{name} graduated. Average grade: {average}");
        }
    }
}
