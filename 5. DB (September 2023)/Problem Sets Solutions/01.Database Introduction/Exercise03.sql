/*
	3. Alter Minions Table

Change the structure of the Minions table to have a new column 
TownId that would be of the same type as the Id column in Towns table. 
Add a new constraint that makes TownId foreign key and references to Idcolumn in Towns table.
*/

USE Minions2024;

ALTER TABLE Minions
ADD	TownId	INTEGER
FOREIGN KEY (TownId) REFERENCES Towns(Id);
