// 07. Company Users

namespace _07.CompanyUsers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, List<string>> companyUsers = new Dictionary<string, List<string>>();
            string input;
            while ((input = Console.ReadLine()) != "End")
            {
                string[] cmdArgs = input.Split(" -> ", StringSplitOptions.RemoveEmptyEntries);

                string company = cmdArgs[0];
                string employeeId = cmdArgs[1];

                if (!companyUsers.ContainsKey(company))
                {
                    companyUsers[company] = new List<string>();
                }

                if (!companyUsers[company].Contains(employeeId))
                {
                    companyUsers[company].Add(employeeId);
                }
            }

            foreach (var kvp in companyUsers)
            {
                Console.WriteLine($"{kvp.Key}");

                foreach (var employeeId in kvp.Value)
                {
                    Console.WriteLine($"-- {employeeId}");
                }
            }
        }
    }
}