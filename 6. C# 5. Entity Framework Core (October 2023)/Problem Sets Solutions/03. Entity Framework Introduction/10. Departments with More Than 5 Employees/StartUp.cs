/*
Find all departments with more than 5 employees. 
    Order them by employee count (ascending), then by department name (alphabetically). 
    For each department, print the department name and the manager's first and last name on the first row. 
    Then print the first name, the last name and the job title of every employee on a new row. 
    Order the employees by first name (ascending), then by last name (ascending).
Format of the output: 
    For each department print it in the format 
    "<DepartmentName> - <ManagerFirstName> <ManagerLastName>" 
    and for each employee print it in the format 
    "<EmployeeFirstName> <EmployeeLastName> - <JobTitle>".
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
            string info = GetDepartmentsWithMoreThan5Employees(context);
            Console.WriteLine(info);
        }

        public static string GetDepartmentsWithMoreThan5Employees(SoftUniContext context)
        {
            var departments = context.Employees
                .Include(e => e.Department)
                .ThenInclude(d => d.Manager)
                .GroupBy(e => new
                {
                    e.Department.Name,
                    e.Department.ManagerId,
                    Manager = e.Department.Manager.FirstName + ' ' + e.Department.Manager.LastName,
                    e.DepartmentId,
                })
                .Where(g => g.Count() > 5)
                .Select(e => new
                {
                    Department = e.Key,
                    NumberOfEmployees = e.Count(),
                })
                .OrderBy(d => d.NumberOfEmployees)
                .ThenBy(d=>d.Department.Name)
                .ToList();

            var employees = context.Employees
                .Select(e => new
                {
                    Name = e.FirstName + ' ' + e.LastName,
                    e.JobTitle,
                    e.DepartmentId,
                })
                .OrderBy(e => e.Name)
                .ToList();

            StringBuilder sb = new StringBuilder();
            foreach (var d in departments)
            {
                sb.AppendLine($"{d.Department.Name} - {d.Department.Manager} - {d.NumberOfEmployees} ");
                foreach(var e in employees.Where(e => e.DepartmentId == d.Department.DepartmentId))
                {
                    sb.AppendLine($"{e.Name} - {e.JobTitle}");
                }
            }

            return sb.ToString();
        }
    }
}
