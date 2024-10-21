/*
	6. Drop All Tables

Delete all tables from the Minions database using SQL query.
*/

-- USE Minions2024;
DROP TABLE Minions; -- Since Minions references Towns, I Have to delete Towns second
DROP TABLE Towns;