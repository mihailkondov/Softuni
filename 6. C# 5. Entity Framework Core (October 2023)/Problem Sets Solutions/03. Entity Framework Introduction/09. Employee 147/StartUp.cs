/*
    Get the employee with id 147. 
    Return only his/her first name, last name, job title and projects 
    (print only their names). 
    The projects should be ordered by name (ascending). 
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
            string info = GetEmployee147(context);
            Console.WriteLine(info);
        }

        public static string GetEmployee147(SoftUniContext context)
        {
            var employee = context.Employees
                .Include(e => e.EmployeesProjects)
                .ThenInclude(ep => ep.Project)
                .Where(e => e.EmployeeId == 147)
                .Select(e => new
                {
                    Name = e.FirstName + " " + e.LastName,
                    JobTitle = e.JobTitle,
                    Projects = e.EmployeesProjects
                    .Select(ep => new
                    {
                        ProjectName = ep.Project.Name
                    })
                    .OrderBy(p => p.ProjectName)
                    .ToList()
                })
                .FirstOrDefault();

            StringBuilder sb = new StringBuilder();
            sb.AppendLine($"{employee.Name} - {employee.JobTitle}");
            foreach (var project in employee.Projects)
            {
                sb.AppendLine($"{project.ProjectName}");
            }

            return sb.ToString();
        }
    }
}
