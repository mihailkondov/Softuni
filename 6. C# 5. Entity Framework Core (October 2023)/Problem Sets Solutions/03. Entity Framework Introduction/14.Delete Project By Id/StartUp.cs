/*
    Let's delete the project with id 2. 
    Then, take 10 projects and return their names, each on a new line. 
    Remember to restore your database after this task.
*/

using SoftUni.Data;
using System.Text;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = DeleteProjectById(context);
            Console.WriteLine(info);
        }

        public static string DeleteProjectById(SoftUniContext context)
        {
            var projectsToRemove = context.EmployeesProjects.Where(ep => ep.ProjectId == 2);
            foreach (var project in projectsToRemove)
            {
                context.EmployeesProjects.Remove(project);
            }

            var projectToDelete = context.Projects.FirstOrDefault(p => p.ProjectId == 2);
            if(projectToDelete != null)
            {
                context.Remove(projectToDelete);
            }

            context.SaveChanges();

            var projects = context.Projects
                .Take(10)
                .Select(p => p.Name)
                .ToList();

            StringBuilder sb = new();
            foreach (var project in projects)
            {
                sb.AppendLine($"{project}");
            }
            return sb.ToString();
        }
    }
}
