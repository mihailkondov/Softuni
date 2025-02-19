/*
	2. One-To-Many Relationship

Create two tables and use appropriate data types.
Example
	Models										|	Manufacturers
		ModelID		Name		ManufacturerID	|		ManufacturerID	Name		EstablishedOn
		101			X1			1				|		1				BMW			07/03/1916
		102			i6			1				|		2				Tesla		01/01/2003
		103			Model S		2				|		3				Lada		01/05/1966
		104			Model X		2				|
		105			Model 3		2				|
		106			Nova		3				|
Insert the data from the example above and add primary keys and foreign keys.
*/

CREATE TABLE Manufacturers (
	ManufacturerID	INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name			NVARCHAR(100)	NOT NULL,
	EstablishedOn	DATE
);

CREATE TABLE Models (
	ModelID			INTEGER		PRIMARY KEY IDENTITY(100,1),
	Name			NVARCHAR(100),
	ManufacturerID	INTEGER		FOREIGN KEY REFERENCES Manufacturers(ManufacturerID)
);

INSERT INTO Manufacturers 
	(Name,		EstablishedOn)
VALUES
	 ('BMW',	'07/03/1916')
	,('Tesla',	'01/01/2003')
	,('Lada',	'01/05/1966')
;

INSERT INTO Models
	(Name,			ManufacturerID)
VALUES
	 ('X1',			1)
	,('i6',			1)				
	,('Model S',	2)				
	,('Model X',	2)				
	,('Model 3',	2)				
	,('Nova',		3)				
;

---- Query the newly created tables
	-- SELECT * FROM Models;
	-- SELECT * FROM Manufacturers;
---- Some useful operations to fix mistakes while creating and populating the tables	
	-- DBCC CHECKIDENT ('Models', RESEED, 101); Changes the Identity to start from 101 in case it was falsely declared.
	-- TRUNCATE TABLE Models;		 -- Delete models first, since they reference manufacturers
	-- TRUNCATE TABLE Manufacturers; -- Even after truncating the Models table I still can't directly truncate this table because of the reference
	-- DELETE FROM Manufacturers;	 
---- This works, but won't reset the IDENTITY property of the table, so when adding the same manufacturers their 
---- foreign keys would be different. (and since that's what's in my models data, I have to reset the identity:
	-- DBCC CHECKIDENT ('Manufacturers', RESEED, 0);
