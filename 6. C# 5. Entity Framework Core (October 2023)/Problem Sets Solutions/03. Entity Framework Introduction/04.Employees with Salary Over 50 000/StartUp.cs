/*
    Your task is to extract all employees with salary over 50000. 
    Return their first names and salaries in format
    "{firstName} – {salary}". 
    Salary must be rounded to 2 symbols, after the decimal separator. 
    Sort them alphabetically by first name.
*/

using SoftUni.Data;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = GetEmployeesWithSalaryOver50000(context);
            Console.WriteLine(info);
        }

        public static string GetEmployeesWithSalaryOver50000(SoftUniContext context)
        {
            var employees = context.Employees
                .Select(e => new { e.FirstName, e.Salary })
                .Where(e => e.Salary > 50000)
                .OrderBy(e => e.FirstName)
                .ToArray();

            string result = string.Join(
                Environment.NewLine, 
                employees.Select(e => $"{e.FirstName} - {e.Salary:F2}")
            );

            return result;
        }
    }
}
