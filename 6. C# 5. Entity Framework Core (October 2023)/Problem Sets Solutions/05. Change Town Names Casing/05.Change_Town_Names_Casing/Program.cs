using Microsoft.Data.SqlClient;
using System.Data;
using static Azure.Core.HttpHeader;

namespace _05.Change_Town_Names_Casing
{
    public class Program
    {
        static void Main(string[] args)
        {            
            // Establish connection
            string connectionString = @"Server=.;Database=MinionsDB;TrustServerCertificate=True;Trusted_Connection=True;Connection Timeout=5";
            using SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();

            // User input
            string country = Console.ReadLine();

            // Execute query
            SqlCommand sqlCommand = new SqlCommand(SqlCommands.TOWNS_UPPER, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@Country", country);
            using SqlDataReader reader = sqlCommand.ExecuteReader();
            int recordsAffected = reader.RecordsAffected;

            // Print results
            if (recordsAffected == 0 )
            {
                Console.WriteLine("No town names were affected.");
            }
            else
            {
                Console.WriteLine($"{reader.RecordsAffected} town names were affected.");
                List<string> townNames = new List<string>();
                while (reader.Read())
                {
                    townNames.Add(reader["Name"].ToString());
                }
                Console.Write("[");
                Console.Write(string.Join(", ", townNames));
                Console.WriteLine("]");
            }
        }
    }
}
