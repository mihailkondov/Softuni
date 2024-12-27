using Microsoft.Data.SqlClient;

namespace _02.Villain_Names
{
	internal class VillainNames
	{
		static async Task Main(string[] args)
		{
			string connectionString = "Server=.;Database=MinionsDB;TrustServerCertificate=True;Trusted_Connection=True";
			using SqlConnection connection = new SqlConnection(connectionString);

			string query = "SELECT Villains.[Name], COUNT(MinionsVillains.MinionId) AS NumberOfMinions FROM Villains JOIN MinionsVillains ON Villains.Id = MinionsVillains.VillainId GROUP BY Villains.[Name] HAVING COUNT(MinionsVillains.MinionId) > 3 ORDER BY NumberOfMinions DESC";
			SqlCommand command = new SqlCommand(query, connection);

			await connection.OpenAsync();
			
			using SqlDataReader reader = await command.ExecuteReaderAsync();

			while(reader.Read())
			{
                await Console.Out.WriteLineAsync(string.Join(" ", reader));
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    Console.Write(reader[i] + " ");
                }
                Console.WriteLine();
            }
		}
	}
}
