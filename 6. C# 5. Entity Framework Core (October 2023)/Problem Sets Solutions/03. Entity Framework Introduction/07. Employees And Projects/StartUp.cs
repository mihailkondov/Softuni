/*
    Find the first 10 employees and print each employee's first name, last name, manager's first name and last name. 
    If they have projects started in the period 2001 - 2003 (inclusive), 
    print them with information about their name, start and end date. 
    Then return all of their projects in the format "--<ProjectName> - <StartDate> - <EndDate>", each on a new row. 
    If a project has no end date, print "not finished" instead.
*/

using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using System.Globalization;
using System.Text;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = GetEmployeesInPeriod(context);
            Console.WriteLine(info);
        }

        public static string GetEmployeesInPeriod(SoftUniContext context)
        {
            var employees = context.Employees
            .Take(10)
            .Include(e => e.EmployeesProjects)
            .ThenInclude(ep => ep.Project)
            .Select(e  => new { 
                Name = e.FirstName + " " + e.LastName
                ,ManagerName = e.Manager.FirstName + ' ' + e.Manager.LastName
                ,Projects = e.EmployeesProjects
                .Select(ep => new { 
                    ProjectName = ep.Project.Name
                    ,StartDate = ep.Project.StartDate
                    ,EndDate = ep.Project.EndDate
                })
                .Where(p => p.StartDate.Year >= 2001 && p.StartDate.Year <= 2003 )
            })
            .ToList();

            StringBuilder sb = new StringBuilder();
            string dateTimePattern = "M/d/yyyy h:mm:ss tt";

            foreach (var e in employees)
            {
                sb.AppendLine($"{e.Name} - Manager: {e.ManagerName}");
                foreach (var p in e.Projects)
                {
                    var startDateString = p.StartDate.ToString(dateTimePattern, CultureInfo.InvariantCulture);
                    var endDateString = p.EndDate == null 
                        ? "not finished"
                        : ((DateTime)p.EndDate).ToString(dateTimePattern, CultureInfo.InvariantCulture);
                    sb.AppendLine($"--{p.ProjectName} - {startDateString} - {endDateString}");
                }
            }
            return sb.ToString(); 
        }
    }
}
