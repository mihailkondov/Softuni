/*
    Find all addresses, ordered by the number of employees who live there (descending), 
    then by town name (ascending) and finally by address text (ascending). 
    Take only the first 10 addresses. For each address return it in the format 
    "<AddressText>, <TownName> - <EmployeeCount> employees"
*/

using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using System.Text;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = GetAddressesByTown(context);
            Console.WriteLine(info);
        }

        public static string GetAddressesByTown(SoftUniContext context)
        {
            var addresses = context.Employees
                .Include(e => e.Address)
                .ThenInclude(a => a.Town)
                .GroupBy(e => new { Address = e.Address.AddressText, Town = e.Address.Town.Name })
                .Select(e =>
                new
                {
                    Address = e.Key.Address,
                    Town = e.Key.Town,
                    NumberOfEmployees = e.Count(),
                })
                .OrderByDescending(a => a.NumberOfEmployees)
                .ThenBy(a => a.Town)
                .Take(10)
                .ToList();

            StringBuilder sb = new StringBuilder();
            foreach (var address in addresses)
            {
                sb.AppendLine($"{address.Address}, {address.Town} - {address.NumberOfEmployees} employees");
            }

            return sb.ToString();
        }
    }
}
