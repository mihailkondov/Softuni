using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07._Print_All_Minion_Names
{
    public static class SqlCommands
    {
        public static string selectAllMinions = @"
            SELECT [Name] FROM Minions;
        ";
    }
}
