using Microsoft.Data.SqlClient;
using Microsoft.IdentityModel.Tokens;
using static _07._Print_All_Minion_Names.SqlCommands;

namespace _07._Print_All_Minion_Names
{
    /// <summary>
    ///  The program prints all minion names from the minions table in the following order: first record, last 
    /// record, first + 1, last - 1, first + 2, last - 2 … first + n, last - n.
    /// For example the sequence of numbers from 1 to 15 becomes:
    /// 1 15 2 14 3 13 4 12 5 11 6 10 7 9 8
    /// </summary>
    public class Program
    {
        const string _connectionString = @"
            Connection Timeout=5;
            Database=MinionsDB;
            Integrated Security=True;
            Server=COMPUTER;
            TrustServerCertificate=True
        ";
        static void Main(string[] args)
        {
            using SqlConnection sqlConnection = new SqlConnection(_connectionString);
            sqlConnection.Open();

            using SqlCommand getMinionNames = new SqlCommand(SqlCommands.selectAllMinions, sqlConnection);

            using SqlDataReader minionNameReader = getMinionNames.ExecuteReader();

            List<string> list = new List<string>();
            while(minionNameReader.Read())
            {
                string name = minionNameReader.GetString(0);
                list.Add(name);
            }

            Console.WriteLine("Initial order of minions:");
            foreach (var item in list)
            {
                Console.WriteLine(item);
            }

            Console.WriteLine();
            Console.WriteLine("Reordered minions:");
            while (list.Count > 0)
            {
                Console.WriteLine(list[0]);
                list.RemoveAt(0);
                if(list.Count > 0) 
                {
                    Console.WriteLine(list[list.Count - 1]);
                    list.RemoveAt(list.Count - 1);
                    
                }
            }
        }
    }
}
