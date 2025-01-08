using EFCoreProject.Data.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Conventions;
using System.Runtime.CompilerServices;

namespace EFCoreProject
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var context = new MiniOrmContext();
            using (context)
            {
                // Query for an employee
                var employee = context.Employees.Where(e => e.Id == 1).ToArray()[0];
                var dept = context.Departments.Where(d => d.Employees.Contains(employee)).ToArray()[0];
                string fn = employee.FirstName;
                string ln = employee.LastName;
                string dp = dept.Name;
                Console.WriteLine(fn + ' ' + ln + " works in " + dp);

                // Insert entity
                Employee? theRock = context.Employees
                    .Where(e => e.FirstName == "Dwayne" && e.MiddleName == "The Rock" && e.LastName == "Johnson")
                    .FirstOrDefault();
                if (theRock == null)
                {
                    var newEmployee = new Employee() { 
                        FirstName = "Dwayne", 
                        MiddleName = "The Rock", 
                        LastName = "Johnson", 
                        IsEmployed = false 
                    };
                    context.Employees.Add(newEmployee);
                }

                // Insert cascading entities
                Employee? johnCena = context.Employees
                    .Where(e => e.FirstName == "John" && e.LastName == "Cena")
                    .FirstOrDefault();
                if (johnCena == null)
                {
                    Department wwe = new Department() { Name = "World Wrestling Entertainment" };


                    johnCena = new Employee() {
                        FirstName = "John",
                        LastName = "Cena",
                        IsEmployed = true//,  
                        //Department = wwe  // this line is not needed for the thing to work
                    };

                    wwe.Employees.Add(johnCena);
                    context.Departments.Add(wwe);
                }

                // Modify Existing Entities
                dept = context.Departments.Where(d => d.Name == "World Wrestling Entertainment").FirstOrDefault();
                if (dept != null) {
                    dept.Name = "WrestleMania";
                }

                // Delete an Entity
                context.Employees.Remove(johnCena); // Deletes John Cena, but not the WrestleMania department.
                context.SaveChanges();
            }
        }
    }
}
