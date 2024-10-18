/*
	9. Change Primary Key

Using SQL queriesmodify table Users from the previous task. 
First remove the current primary key and then create a new primary key that would be a combination of fields Id and Username.
*/
USE Users;

DECLARE @pk_constraint NVARCHAR(MAX);

SELECT TOP(1) @pk_constraint = CONSTRAINT_NAME 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'Users'
AND CONSTRAINT_TYPE = 'PRIMARY KEY';

-- Drop current primary key constraint
-- (tricking the database into accepting my query with a variable)
DECLARE @sql NVARCHAR(MAX);
SET @sql = 'ALTER TABLE Users DROP CONSTRAINT ' + @pk_constraint;
EXEC sp_executesql @sql;

-- Set composite primary key
ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY (Id, Username);


-- SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS; -- All constraints
-- SELECT * FROM sys.key_constraints;

-- This fetches the name of the primary key constraint:
	--SELECT CONSTRAINT_NAME
	--  FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	-- WHERE TABLE_NAME = 'Users'
	--   AND CONSTRAINT_TYPE = 'PRIMARY KEY';