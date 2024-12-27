using Microsoft.Data.SqlClient;

namespace _04.Add_Minion
{
	internal class Program
	{
		static async Task Main(string[] args)
		{
			// Establish connection
			string connectionString = "Server=.;Database=MinionsDB;TrustServerCertificate=True;Trusted_Connection=True;Connection Timeout=5;";
			using SqlConnection sqlConnection = new SqlConnection(connectionString);
			await sqlConnection.OpenAsync();

            // User inputs
			string[] minionArray = Console.ReadLine().Split(':')[1].Split(' ',StringSplitOptions.RemoveEmptyEntries);
			string minionName = minionArray[0];
			int minionAge = int.Parse(minionArray[1]);
			string minionTown = minionArray[2];
			string villainName= Console.ReadLine().Split(':')[1].Split(' ', StringSplitOptions.RemoveEmptyEntries)[0];

            // Look for villain in the database.
            // When the result is null it will be used throughout the whole program to determine whether
            // new villain was inserted so this variable shouldn't be changed.
            using SqlCommand lookForVillain = new SqlCommand(SqlQueries.RETURN_VILLAIN_BY_NAME, sqlConnection);
			lookForVillain.Parameters.AddWithValue("@VillainName", villainName);
			int? villainId = null;
			using (SqlDataReader sqlDataReader = await lookForVillain.ExecuteReaderAsync())
			{
				while(sqlDataReader.Read())
				{
                    var res1 = sqlDataReader.GetOrdinal("Id");
                    villainId = sqlDataReader.GetInt32(res1);
				}
			}

			// Look for town in the database
            // Again, null from here is used to determine whether new town was inserted, so this variable shouldn't be changed
			using SqlCommand lookForTown = new SqlCommand(SqlQueries.CHECK_TOWN, sqlConnection);
			lookForTown.Parameters.AddWithValue("@Town", minionTown);
			int? townId = (int?)(await lookForTown.ExecuteScalarAsync());

			// Select correct procedure and insert minion
			SqlCommand writeMinionInDatabase;
			if (townId == null && villainId == null)
			{
				writeMinionInDatabase = new SqlCommand(SqlQueries.ADD_MINION_VILLAIN_TOWN, sqlConnection);
				writeMinionInDatabase.Parameters.AddWithValue("@VillainName", villainName);
				writeMinionInDatabase.Parameters.AddWithValue("@TownName", minionTown);
			}
			else if (townId == null && villainId != null)
			{
				writeMinionInDatabase = new SqlCommand(SqlQueries.ADD_MINION_TOWN, sqlConnection);
				writeMinionInDatabase.Parameters.AddWithValue("@TownName", minionTown);
            }
			else if (townId != null && villainId == null)
			{
				writeMinionInDatabase = new SqlCommand(SqlQueries.ADD_MINION_VILLAIN, sqlConnection);
				writeMinionInDatabase.Parameters.AddWithValue("@VillainName", villainName);
			}
			else if (townId != null && villainId != null)
			{
				writeMinionInDatabase = new SqlCommand(SqlQueries.ADD_MINION, sqlConnection);
			}
			else { throw new Exception("Missing case for townId == or != null or villainId == or != null"); }

            // This If statement could be written in the if statements above, but it will need to be repeated twice which is 
            // why I let it out here separately.
			if (villainId != null)
			{
				writeMinionInDatabase.Parameters.AddWithValue("@VillainId", villainId);
			}

            // This If statement could be written in the if statements above, but it will need to be repeated twice which is 
            // why I let it out here separately.
            if (townId != null)
			{
				writeMinionInDatabase.Parameters.AddWithValue("@TownId", townId);
			}

			writeMinionInDatabase.Parameters.AddWithValue("@MinionAge", minionAge);
			writeMinionInDatabase.Parameters.AddWithValue("@MinionName", minionName);
			await writeMinionInDatabase.ExecuteScalarAsync();

			if (townId == null)
			{
				await Console.Out.WriteLineAsync($"Town {minionTown} was added to the database.");
			}

			if (villainId == null)
			{
				await Console.Out.WriteLineAsync($"Villain {villainName} was added to the database.");
			}

			await Console.Out.WriteLineAsync($"Successfully added {minionName} to be minion of {villainName}.");
        }
	}
}
