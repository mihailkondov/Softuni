/*
    Extract all employees from the Research and Development department. 
    Order them by salary (in ascending order), then by first name (in descending order). 
    Return only their first name, last name, department name and salary rounded to 2 symbols
*/

using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = GetEmployeesFromResearchAndDevelopment(context);
            Console.WriteLine(info);
        }

        public static string GetEmployeesFromResearchAndDevelopment(SoftUniContext context)
        {
            var employees = context.Employees
                .Include(e => e.Department)
                .Where(e => e.Department.Name == "Research and Development")
                .Select(e => new { e.FirstName, e.LastName, DepartmentName = e.Department.Name, e.Salary })
                .OrderBy(e => e.Salary)
                .ThenByDescending(e => e.FirstName)
                .ToArray();

            string result = string.Join(
                Environment.NewLine,
                employees.Select(e => $"{e.FirstName} {e.LastName} from {e.DepartmentName} - ${e.Salary:F2}")
            );

            return result;
        }
    }
}
