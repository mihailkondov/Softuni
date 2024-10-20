/* 
	7. Create Table People

Using SQL query, create table People with the following columns:
	• Id – unique number. For every person there will be no more than (2^31)-1 people (auto incremented).
	• Name – full name of the person. There will be no more than 200 Unicode characters (not null).
	• Picture – image with size up to 2 MB (allow nulls).
	• Height – in meters. Real number precise up to 2 digits after floating point (allow nulls).
	• Weight – in kilograms. Real number precise up to 2 digits after floating point (allow nulls).
	• Gender – possible states are m or f (not null).
	• Birthdate – (not null).
	• Biography – detailed biography of the person. It can contain max allowed Unicode characters(allow nulls).
Make the Id a primary key. 
Populate the table with only 5 records. 
Submit your CREATE and INSERT statements as Run queries & check DB.
*/


-- CREATE DATABASE People;
-- USE People;

CREATE TABLE People (
	Id			INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(200)	NOT NULL,
	Picture		VARBINARY(MAX),
	Height		NUMERIC(3,2),
	Weight		NUMERIC(5,2),
	Gender		CHAR(1) 		NOT NULL CHECK( Gender IN ('m', 'f')),
	Birthdate	DATE			NOT NULL,
	Biography	NVARCHAR(MAX)
);

INSERT INTO People 
	(Name,		Gender,	Birthdate)
VALUES
	('Albena',	'f',	'01-01-2000'),
	('Felix',	'm',	'09-30-1988'),
	('Melina',	'f',	'07-14-1998'),
	('Sonya',	'f',	'12-31-1989'),
	('Zeus',	'm',	'11-15-1970')
;