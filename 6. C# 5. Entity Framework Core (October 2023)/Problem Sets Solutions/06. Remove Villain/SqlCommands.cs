using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _06._Remove_Villain
{
    public static class SqlCommands
    {
        public static string REMOVE_VILLAIN = @"
            SELECT 
                [Name] 
            FROM 
                Villains 
            WHERE 
                Id = @VillainId
            ;

            DELETE 
            FROM 
                MinionsVillains
	        WHERE 
                VillainId = @VillainId
            ;

	        SELECT @@ROWCOUNT AS RowsAffected
            ;

	        DELETE 
            FROM 
                Villains
	        WHERE 
                Id = @VillainId
	        ;
        ";
    }
}
