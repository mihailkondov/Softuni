/*
    Your first task is to extract all employees and
    return their first, last and middle name, their job title and salary, 
    rounded to 2 symbols after the decimal separator,
    all of those separated with a space. Order them by employee id.
*/

using SoftUni.Data;
namespace SoftUni
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            SoftUniContext context = new();
            string info = GetEmployeesFullInformation(context);
            Console.WriteLine(info);
        }

        public static string GetEmployeesFullInformation(SoftUniContext context)
        {
            var employees = context.Employees
                .Select(e => new
                {
                    e.FirstName,
                    e.LastName,
                    e.MiddleName,
                    e.JobTitle,
                    e.Salary
                })
                .ToArray();

            var result = string.Join(
                Environment.NewLine, 
                employees.Select(
                e => $"{e.FirstName} {e.LastName} {e.MiddleName} {e.JobTitle} {e.Salary:f2}")
            );

            return result;
        }
    }
}
