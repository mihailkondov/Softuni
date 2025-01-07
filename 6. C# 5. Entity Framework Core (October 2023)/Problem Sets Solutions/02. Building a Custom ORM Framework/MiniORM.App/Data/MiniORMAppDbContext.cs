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
        protected MiniORMAppDbContext(string connectionString)
            : base(connectionString)
        {
        }

        public DbSet<Department> Departmens { get; }
        public DbSet<Employee> Employees { get; }
        public DbSet<EmployeeProject> EmployeesProject { get; }
        public DbSet<Project> Projects { get; }
    }
}
