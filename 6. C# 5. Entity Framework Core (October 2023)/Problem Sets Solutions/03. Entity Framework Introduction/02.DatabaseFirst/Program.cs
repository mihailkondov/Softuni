using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using SoftUni.Models;
namespace SoftUni // The namespace is different from the project name to make sure Judge can find my classes.
{
    public class Program // This class needs to be public for the scaffolding to work
    {
        /*
        * These are the packages you will need, in order to scaffold our SoftUniContext from the SoftUni database:
            Install-Package Microsoft.EntityFrameworkCore.Tools
            Install-Package Microsoft.EntityFrameworkCore.SqlServer
            Install-Package Microsoft.EntityFrameworkCore.Design

        * To scaffold the database execute command:
            Scaffold-DbContext 
            -Connection "Server=.; Database = SoftUni;Trusted_Connection=True;TrustServerCertificate=True" 
            -Provider Microsoft.EntityFrameworkCore.SqlServer 
            -OutputDir Data/Models

        * After scaffolding, clean up:
            Uninstall-Package Microsoft.EntityFrameworkCore.Tools -r
            Uninstall-Package Microsoft.EntityFrameworkCore.Design -RemoveDependencies
        */

        static void Main(string[] args)
        {
            SoftUniContext context = new();
            Employee? employee = context.Employees.Include(e => e.EmployeesProjects)
                .ThenInclude(ep => ep.Project)
                .Where(e => e.EmployeeId == 1)  // better put filtering here so it goes to the sql query instead of 
                                                       // pulling everything from the database and then filtering in memory (happens with
                                                       // FirstOrDefault() )
                .FirstOrDefault();

            Console.WriteLine("This program has a DbContext and models scaffolded from the existing database called SoftUni.");
            Console.WriteLine("The following line is a test to see if I can extract information from the database:");
            Console.WriteLine();

            var projectNames = employee?.EmployeesProjects?.Select(ep => ep.Project.Name);
            if (projectNames == null || !projectNames.Any())
                projectNames = new[] { "no projects" };

            Console.WriteLine($"{employee?.FirstName} {employee?.LastName} is working on {String.Join(", ", projectNames)}.");
        }
    }
}
