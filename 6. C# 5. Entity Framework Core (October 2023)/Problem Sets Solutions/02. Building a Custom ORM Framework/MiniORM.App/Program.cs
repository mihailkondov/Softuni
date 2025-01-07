using MiniORM.App.Data;

namespace MiniORM.App
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var connectionString = @"Server=.;Database=MiniORM;Integrated Security=True;TrustServerCertificate=True;";
            var dbContext = new MiniORMAppDbContext(connectionString);

            var employee1 = dbContext.Employees.FirstOrDefault();
            Console.WriteLine(employee1.FirstName);

            dbContext.Employees.Add(new Data.Entities.Employee
            {
                FirstName = "Optimus"
            ,   LastName = "Prime"
            ,   IsEmployed = true
            ,   Department = dbContext.Departments.Where(d => d.Id == 1).FirstOrDefault()
            ,   DepartmentId = 1
            });

            var employee2 = dbContext.Employees.Last();
            employee2.LastName = "M O D I F I E D";

            dbContext.SaveChanges();



        }
    }
}
