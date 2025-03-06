using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SoftUniKindergarten
{
    public class Kindergarten
    {
        public Kindergarten(string name, int capacity)
        {
            Name = name;
            Capacity = capacity;
            Registry = new List<Child>();
        }

        public string Name { get; set; }
        public int Capacity { get; set; }
        public int ChildrenCount
        {
            get
            {
                return Registry.Count;
            }
        }
        public List<Child> Registry { get; set; }

        public bool AddChild(Child child)
        {
            if (Registry.Count < Capacity)
            {
                Registry.Add(child);
                return true;
            }
            return false;
        }

        public bool RemoveChild(string childFullName)
        {
            string[] names = childFullName.Split(' ').ToArray();
            string firstName = names[0];
            string lastName = names[1];
            Child child = this.Registry.FirstOrDefault(x => x.FirstName == firstName && x.LastName == lastName);

            if (child != null)
            {
                return Registry.Remove(child);
            }
            return false;
        }

        public Child GetChild(string childFullName)
        {
            string[] names = childFullName.Split(' ').ToArray();
            string firstName = names[0];
            string lastName = names[1];
            return this.Registry.FirstOrDefault(x => x.FirstName == firstName && x.LastName == lastName);
        }

        public string RegistryReport()
        {
            Registry = Registry
                .OrderByDescending(x => x.Age)
                .ThenBy(x => x.LastName)
                .ThenBy(x => x.FirstName)
                .ToList();
            StringBuilder report = new StringBuilder($"Registered children in {this.Name}:");
            report.Append(Environment.NewLine);
            // report.AppendLine(Environment.NewLine);
            foreach (Child child in Registry)
            {
                // Greta Thunberg, Age: 3, Contact info: Pablo Gaviria - 0888 888 888
                report.Append(child.ToString());
                report.Append(Environment.NewLine);
            }

            return report.ToString().TrimEnd();
        }
    }
}
