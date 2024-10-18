/* 
	12. Set Unique Field

Using SQL queriesmodify table Users. 
Remove Username field from the primary key so only the field Id would be primary key. 
Now add unique constraint to the Username field to ensure that the values there are at least 3 symbols long.
*/

USE Users;

-- Drop current primary key constraint
	DECLARE @pk_constraint NVARCHAR(MAX);
	
	-- Find the primary key constraint in the metatable and save it to a variable
	SELECT TOP(1) @pk_constraint = CONSTRAINT_NAME 
	FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	WHERE TABLE_NAME = 'Users'
	AND CONSTRAINT_TYPE = 'PRIMARY KEY';

	-- tricking the database into accepting my query with a variable by 
	-- incorporating it in a string which I will execute
	DECLARE @sql NVARCHAR(MAX);
	SET @sql = 'ALTER TABLE Users DROP CONSTRAINT ' + @pk_constraint;
	EXEC sp_executesql @sql;

-- Set new primary key
	ALTER TABLE Users
	ADD CONSTRAINT PK_Users PRIMARY KEY (Id);

-- Set Username to be unique
ALTER TABLE Users
ADD CONSTRAINT unique_username 
UNIQUE (Username)
;

-- Set minimum Username length to 3
ALTER TABLE Users
ADD CONSTRAINT username_min_3
CHECK(LEN(Username) >= 3);

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;