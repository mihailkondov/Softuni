/*
    Write a program that deletes a town with name "Seattle". 
    Also, delete all addresses that are in those towns.
    Return the number of addresses that were deleted in format 
    "{count} addresses in Seattle were deleted". 
    There will be employees living at those addresses, which will be a problem when trying to delete the addresses. 
    So, start by setting the AddressId of each employee for the given address to null. 
    After all of them are set to null, you may safely remove all the addresses from the context and finally remove the given town.
*/

using Microsoft.EntityFrameworkCore;
using SoftUni.Data;
using SoftUni.Models;
using System.Linq;
using System.Text;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = RemoveTown(context);
            Console.WriteLine(info);
        }

        public static string RemoveTown(SoftUniContext context)
        {
            Town townToDelete = context.Towns
                .Where(t => t.Name == "Seattle")
                .FirstOrDefault()!;

            List<Address> addressesToRemove = context.Addresses
                .Where(a => a.TownId == townToDelete.TownId)
                .ToList();

            List<Employee> employeesToEdit = context.Employees
                .Include(e => e.Address)
                .Where(e => addressesToRemove.Contains(e.Address))
                .ToList();

            // set employee addresses to null
            foreach (var employee in employeesToEdit)
            {
                employee.Address = null;
            }

            // delete stuff
            context.Addresses.RemoveRange(addressesToRemove);
            context.Towns.Remove(townToDelete);
            context.SaveChanges();

            return $"{addressesToRemove.Count} addresses in Seattle were deleted";
        }
    }
}
