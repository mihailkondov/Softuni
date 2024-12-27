using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _05.Change_Town_Names_Casing
{
    public static class SqlCommands
    {
        /// <summary>
        /// Executing this sql command will change all town names for a given @Country to uppercase in the table Towns. 
        /// Like this: New York -> NEW YORK.
        /// Takes string @Country as parameter.
        /// </summary>
        internal static string TOWNS_UPPER = @"
	        UPDATE 
		        Towns
	        SET 
		        [Name] = UPPER([Name])
	        WHERE 
		        CountryCode IN (SELECT Id FROM Countries WHERE [Name] = @Country);
	        ;

            SELECT 
		        t.[Name] 
	        FROM 
		        Towns AS t 
		        JOIN Countries AS c ON t.CountryCode = c.Id 
	        WHERE 
		        c.Name = @Country
	        ;
        ";
    }
}
