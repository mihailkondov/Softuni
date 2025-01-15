/*
    Write a program that finds all employees whose first name starts with "Sa". 
    Return their first, last name, their job title and salary 
    rounded to 2 symbols after the decimal separator in the format given in the example below. 
    Order them by the first name, then by last name (ascending).
*/

using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using System.Text;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = GetEmployeesByFirstNameStartingWithSa(context);
            Console.WriteLine(info);
        }

        public static string GetEmployeesByFirstNameStartingWithSa(SoftUniContext context)
        {
            var employees = context.Employees
                .Where(e => e.FirstName.StartsWith("Sa"))
                .OrderBy(e => e.FirstName)
                .ThenBy(e => e.LastName)
                .Select(e => new 
                { 
                    Name = e.FirstName + " " + e.LastName,
                    e.JobTitle,
                    e.Salary
                })
                .ToList();

            StringBuilder sb = new();
            foreach (var employee in employees)
            {
                sb.AppendLine($"{employee.Name} - {employee.JobTitle} - (${employee.Salary:F2})");
            }
            return sb.ToString();
        }
    }
}
