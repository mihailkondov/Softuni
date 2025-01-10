using EFCoreProjectCodeFirst.Data;
using EFCoreProjectCodeFirst.Data.Models;

namespace EFCoreProjectCodeFirst
{
    internal class Program
    {
        static void Main(string[] args)
        {
            HogwartsDbContext db = new HogwartsDbContext();

            Student harry = new Student() { FirstName = "Harry", LastName = "Potter", House = new House() { Name = "Gryffindor" } };
            using (db)
            {
                if (!db.Students.Contains(harry))
                {
                    db.Students.Add(harry);
                }
                db.SaveChanges();
            }
            Console.WriteLine($"{harry.FirstName} {harry.LastName} was sorted into {harry.House.Name}.");
        }
    }
}
