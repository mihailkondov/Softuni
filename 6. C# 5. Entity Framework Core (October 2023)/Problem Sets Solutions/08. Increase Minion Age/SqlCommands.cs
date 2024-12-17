using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _08._Increase_Minion_Age
{
    public static class SqlCommands
    {
        public static string incrementMinionAge = @"
            
            UPDATE Minions
            SET
	            [Name] = LOWER([Name]) 
            ,	[Age] = [Age] + 1
            WHERE 
	            [Id] IN (SELECT [Id] FROM @MinionIds)
            ;

            SELECT 
	            [Name]
            ,	[Age] 
            FROM 
	            Minions
            ;
        ";
    }
}
