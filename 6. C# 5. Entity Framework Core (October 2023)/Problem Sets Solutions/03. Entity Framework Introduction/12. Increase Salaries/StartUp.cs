/*
    Write a program that increases salaries of all employees that are in the 
    Engineering, Tool Design, Marketing, or Information Services department by 12%. 
    Then return first name, last name and salary (2 symbols after the
    decimal separator) for those employees, whose salary was increased. 
    Order them by first name (ascending), then by last name (ascending). 
    Format of the output.
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
            string info = IncreaseSalaries(context);
            Console.WriteLine(info);
        }

        public static string IncreaseSalaries(SoftUniContext context)
        {
            var employees = context.Employees
                .Include(e => e.Department)
                .Where(e => new[]
                {
                    "Engineering",
                    "Tool Design",
                    "Marketing",
                    "Information Services"
                }.Contains(e.Department.Name))
                .ToList();

            foreach (var employee in employees)
            {
                employee.Salary = employee.Salary * (decimal)1.12;
            }

            context.SaveChanges();

            var printlist = employees
                .Select(e => new
                {
                    e.Salary,
                    Name = e.FirstName + " " + e.LastName
                })
                .OrderBy(e => e.Name)
                .ToList();

            StringBuilder sb = new();
            foreach (var employee in printlist)
            {
                sb.AppendLine($"{employee.Name} (${employee.Salary:F2})");
            }
            return sb.ToString();
        }
    }
}
