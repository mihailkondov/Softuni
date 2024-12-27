using Microsoft.Data.SqlClient;
namespace _03.Minion_Names
{
	internal class Program
	{
		static async Task Main(string[] args)
		{
            // Connect to database
			string connectionString = "Server=.; Database = MinionsDB;Trusted_Connection=True;TrustServerCertificate=True";
			using SqlConnection connection = new SqlConnection(connectionString);
			await connection.OpenAsync();

            // Get user input (integer)
            Console.WriteLine("Enter an integer between 1 and 7 to retrieve data about the corresponding villain from the database:");
            int villainId = int.Parse(Console.ReadLine());

            // Execute query
			SqlCommand cmd = new SqlCommand(SqlQueries.MINIONS_BY_VILLAIN_ID, connection);
			cmd.Parameters.AddWithValue("@VillainIdParameter", villainId);
			using SqlDataReader sqlDataReader = cmd.ExecuteReader();

            // Print result
			if (await sqlDataReader.ReadAsync())
			{
				Console.WriteLine($"Villain: {sqlDataReader["VillainName"]}");
				await sqlDataReader.NextResultAsync();

				int rowNumber = 0;
				while (await sqlDataReader.ReadAsync())
				{
					await Console.Out.WriteLineAsync($"{++rowNumber}. {sqlDataReader["Name"]} {sqlDataReader["Age"]}");
				}

				if(rowNumber == 0)
				{
					await Console.Out.WriteLineAsync("(no minions)");
				}
			}
			else
			{
                await Console.Out.WriteLineAsync($"No villain with ID {villainId} exists in the database.");
            }
		}
	}
}
