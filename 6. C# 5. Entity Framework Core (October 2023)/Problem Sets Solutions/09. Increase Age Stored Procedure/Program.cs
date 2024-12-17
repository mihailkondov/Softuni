// Description:
//      The program uses the MinionsDB database.
//      It will access the Minions table and increment the minions' age by 1 and change the first
//      letter of their names to lower case.
//
// Usage:
//      In the console enter the an ID (a single integer) of the minion whose age should be incremented and name changed
//
// Requirements:
//      In order for the program to work the following stored procedure needs to be created in the database:
//
//            USE master;
//            GO 
//
//            CREATE PROCEDURE usp_GetOlder @MinionId INTEGER
//            AS
//            BEGIN
//	            UPDATE 
//		            MinionsDB.dbo.Minions 
//	            SET 
//		            Age = Age + 1 
//	            ,   [Name] = LOWER([Name])
//	            WHERE 
//		            Id = @MinionId;
//            END
// 

using Microsoft.Data.SqlClient;
using System.Data;

namespace _09._Increase_Age_Stored_Procedure
{
    public class Program
    {
        // The stored procedure is not tied to a specific database.
        // That's why there is no database in the connection string.
        const string _connectionString =
        @"
            Connection Timeout=5;
            Integrated Security=True;
            Server=.;
            TrustServerCertificate=True"
        ;
        static void Main(string[] args)
        {
            // User Input
            Console.WriteLine("Enter the an ID (a single integer) of the minion whose age should be incremented and name set to lowercase:");
            int id = int.Parse(Console.ReadLine());
            
            // Connection
            using SqlConnection sqlConnection = new SqlConnection(_connectionString);
            
            // Create command and set its properties
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sqlConnection;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = @"usp_GetOlder";

            // Add input parameter and set its properties
            SqlParameter parameter = new SqlParameter();
            parameter.ParameterName = "@MinionId";
            parameter.Value = id;
            parameter.SqlDbType = SqlDbType.Int;

            // Add parameter to the Parameters collection
            cmd.Parameters.Add(parameter);

            // Open connection
            sqlConnection.Open();

            // Execute reader
            using SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            int age = (int)reader["Age"];
            string name = (string)reader["Name"];

            // Print result
            Console.WriteLine($"{name} - {age} years old");
        }
    }
}
