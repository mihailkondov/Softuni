/*
	4. Insert Records in Both Tables

Populate both tables with sample records, given in the table below.
	Minions					Towns
	Id	Name	Age			TownId	Id	Name
	1	Kevin	22			1		1	Sofia
	2	Bob		15			3		2	Plovdiv
	3	Steward NULL		2		3	Varna
Use only SQL queries. Insert the Id manually (don't use identity).
*/

-- USE Minions2024; -- Connect to the correct database

-- Since Minions contains reference to Towns, if I want to insert data about the towns in the minions table 
-- first I would need to have data in the Towns table. That's why I start with the Towns table


-- SET IDENTITY_INSERT Towns ON; --This is needed because I declared the table with the identity constraint earlier. Otherwise I'd have to drop the table and create it again without identity which I don't like
INSERT INTO Towns 
	(Id,	Name)
VALUES
	(1,		'Sofia'),
	(2,		'Plovdiv'),
	(3,		'Varna')
;
-- SET IDENTITY_INSERT Towns OFF;
-- SET IDENTITY_INSERT Minions ON; 
INSERT INTO Minions 
	(Id, Name,		Age,	TownId)
VALUES
	(1, 'Kevin',	22,		1), 
	(2, 'Bob',		15,		3),
	(3, 'Steward',	NULL,	2)
;

-- This is a quick test to see what happens if I want to insert more values using the identity property
--  SET IDENTITY_INSERT Minions OFF;
-- INSERT INTO Minions ( Name, Age)
-- VALUES
--	('Test',	22)
-- ;

