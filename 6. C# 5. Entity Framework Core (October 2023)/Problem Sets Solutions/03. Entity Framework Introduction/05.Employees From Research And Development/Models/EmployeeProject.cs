using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoftUni.Models
{
    public partial class EmployeeProject
    {
        //public EmployeeProject()
        //{
        //    Employee = new HashSet<Employee>();
        //    Projects = new HashSet<Project>();
        //}
        public int EmployeeId { get; set; }
        public int ProjectId { get; set; }
        public virtual Project Project { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
