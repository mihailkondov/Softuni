using Microsoft.Data.SqlClient;

namespace _06._Remove_Villain
{
    internal class Program
    {
        static async Task Main(string[] args)
        {
            // User Input - villain ID
            Console.WriteLine("Please enter an integer - the ID of a villain to be deleted.");
            int villainId = int.Parse(Console.ReadLine());

            // Establish Connection
            string connectionString = @"Server=.;Database=MinionsDB;TrustServerCertificate=True;Trusted_Connection=True;Connection Timeout=5";
            using SqlConnection sqlConnection = new SqlConnection(connectionString);
            await sqlConnection.OpenAsync();

            // Execute commands in database
            SqlCommand cmd = new SqlCommand(SqlCommands.REMOVE_VILLAIN, sqlConnection);
            cmd.Parameters.AddWithValue("@VillainId", villainId);
            using SqlDataReader reader = await cmd.ExecuteReaderAsync();

            // Print result
            bool found = await reader.ReadAsync();
            if (found)
            {
                await Console.Out.WriteLineAsync($"{reader["Name"]} was deleted.");

                reader.NextResult();
                await reader.ReadAsync();
                await Console.Out.WriteLineAsync($"{reader["RowsAffected"]} minions were released.");
            }
            else
            {
                await Console.Out.WriteLineAsync("No such villain was found.");
            }
        }
    }
}
