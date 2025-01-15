/*
    Write a program that returns information about the last 10 started projects. 
    Sort them by name lexicographically and return their name, description and start date, each on a new row.

    Use date format: "M/d/yyyy h:mm:ss tt".
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
            string info = GetLatestProjects(context);
            Console.WriteLine(info);
        }

        public static string GetLatestProjects(SoftUniContext context)
        {
            var projects = context.Projects.OrderByDescending(p => p.StartDate).Take(10).ToList().OrderBy(p => p.Name);

            StringBuilder sb = new();
            foreach (var project in projects)
            {
                sb.AppendLine(project.Name);
                sb.AppendLine(project.Description);
                sb.AppendLine(project.StartDate.ToString("M/d/yyyy h:mm:ss tt", CultureInfo.InvariantCulture));
            }
            return sb.ToString();
        }
    }
}
