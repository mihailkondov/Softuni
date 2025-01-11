/*
    Create a new address with the text "Vitoshka 15" and TownId = 4. 
    Set that address to the employee with last the name "Nakov".
    Then order by descending all the employees by their Address' Id, take 10 rows and from them, take the AddressText. 
    Return the results each on a new line.
*/

using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using SoftUni.Models;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = AddNewAddressToEmployee(context);
            Console.WriteLine(info);
        }

        public static string AddNewAddressToEmployee(SoftUniContext context)
        {
            Employee? nakov = context.Employees
                .Where(e => e.LastName == "Nakov")
                .FirstOrDefault();
            nakov.Address = new Address() { AddressText = "Vitoshka 15", TownId = 4 };
            context.SaveChanges();

            var addresses = context.Addresses
                .OrderByDescending(a => a.AddressId)
                .Take(10)
                .Select(a => new { a.AddressText })
                .ToArray();
            string result = string.Join(
                Environment.NewLine,
                addresses.Select(e => $"{e.AddressText}")
            );

            return result;
        }
    }
}
