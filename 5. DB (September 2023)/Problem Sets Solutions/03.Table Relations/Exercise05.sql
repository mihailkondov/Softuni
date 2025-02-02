/*
	5. Online Store Database

Create a new database and design the following structure:

			+--------------+			+---------------+
			|___OrderItems_|			|___Orders______|
			|	OrderID	   | o-------->	|	OrderID		|
	+-----o	|	ItemID	   |			|	CustomerID  | o-----+
	|		+--------------+			+---------------+		|
	|															|
	|		+--------------+			+---------------+		|
	|		|___Items______|	 		|___Customers___|		|
	+----->	|	ItemID	   |			|	CustomerID	| <-----+
			|	Name	   |			|	Name		|
	+-----o	|	ItemTypeID |			|	Birthday	|
	|		+--------------+			|	CityID		| o-----+
	|							 		+---------------+		|
	|															|
	|		+--------------+	 		+---------------+		|
	|	 	|___ItemTypes__|			|___Cities______|		|
	+----->	|	ItemTypeID |			|	CityID		| <-----+
			|	Name	   |			|	Name		|
			+--------------+			+---------------+
*/
--USE master
--CREATE DATABASE W3OnlineStore;
--GO

USE W3OnlineStore;

CREATE TABLE Cities(
	CityID		INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(100)	NOT NULL
);

CREATE TABLE Customers(
	CustomerID	INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(100)	NOT NULL,
	Birthday	DATE			NOT NULL,
	CityID		INTEGER			NOT NULL	FOREIGN KEY REFERENCES Cities(CityID)
);

CREATE TABLE ItemTypes(
	ItemTypeID	INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(100)	NOT NULL
);

CREATE TABLE Items(
	ItemID		INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(100)	NOT NULL,
	ItemTypeID	INTEGER			NOT NULL	FOREIGN KEY REFERENCES ItemTypes(ItemTypeID)
);

CREATE TABLE Orders (
	OrderID		INTEGER		PRIMARY KEY IDENTITY(1,1),
	CustomerID	INTEGER		NOT NULL FOREIGN KEY REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems(
	OrderID		INTEGER	FOREIGN KEY REFERENCES Orders(OrderID),
	ItemID		INTEGER	FOREIGN KEY REFERENCES Items(ItemID),
	CONSTRAINT PK_OrderItems PRIMARY KEY (OrderID, ItemID)
);

---- Order matters when dropping all tables:
--DROP TABLE OrderItems;
--DROP TABLE Orders;
--DROP TABLE Items;
--DROP TABLE ItemTypes;
--DROP TABLE Customers;
--DROP TABLE Cities;

---- Clean up since this database is useless
--USE master;
--DROP DATABASE W3OnlineStore;