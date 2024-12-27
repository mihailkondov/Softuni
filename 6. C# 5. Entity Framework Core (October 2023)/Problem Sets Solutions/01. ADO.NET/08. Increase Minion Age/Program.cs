// Description:
//      The program uses the MinionsDB database.
//      It will access the Minions table and increment the minions' age by 1 and change the first
//      letter of their names to lower case.
//
// Usage:
//      Enter a space separated list of minion Id-s in the console  
//
// Requirements:
//      In order for the program to work the following SQL script needs to be executed in the database:
// 
//          USE MinionsDB;
//          CREATE TYPE MinionIdTable AS TABLE
//          (
//              Id INT
//          );
// 
//      This will create a type that is used to avoid making multiple requests to the database. 
//      Using a stored procedure would normally make more sense, but that is something the next exercise 
//      is supposed to teach, so I am avoiding to make create the same solution to both exercises.
// 

using Microsoft.Data.SqlClient;
using System.Data;

namespace _08._Increase_Minion_Age
{
    public class Program
    {
        const string _connectionString =
        @"
            Connection Timeout=5;
            Database=MinionsDB;
            Integrated Security=True;
            Server=COMPUTER;
            TrustServerCertificate=True"
        ;
        static void Main(string[] args)
        {
            Console.WriteLine("Enter space separated ids of minions from the Minions table in MinionsDB:");
            int[] minionIds;
            minionIds = Console.ReadLine().Split(' ').Select(x => int.Parse(x)).ToArray();

            using SqlConnection sqlConnection = new SqlConnection(_connectionString);
            sqlConnection.Open();
            DataTable minionIdsTable = new DataTable();
            minionIdsTable.Columns.Add("Id", typeof(int));
            foreach (int id in minionIds)
            {
                minionIdsTable.Rows.Add(id);
            }

            using SqlCommand sqlCommand = new SqlCommand(SqlCommands.incrementMinionAge, sqlConnection);
            SqlParameter sqlCommandParameter = sqlCommand.Parameters.AddWithValue("@MinionIds", minionIdsTable);
            sqlCommandParameter.SqlDbType = SqlDbType.Structured;
            sqlCommandParameter.TypeName = "MinionIdTable";

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine($"{reader["Name"]} {reader["Age"]}");
            }
        }
    }
}
