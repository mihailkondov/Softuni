using MiniORM.App.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiniORM.App.Data
{
    public class MiniORMAppDbContext : DbContext
    {
        public MiniORMAppDbContext(string connectionString)
            : base(connectionString)
        {
        }

        // These must correspond exactly to the names of the tables in the database
        public DbSet<Department> Departments { get; }
        public DbSet<Employee> Employees { get; }
        public DbSet<EmployeeProject> EmployeesProjects { get; }
        public DbSet<Project> Projects { get; }
    }
}
