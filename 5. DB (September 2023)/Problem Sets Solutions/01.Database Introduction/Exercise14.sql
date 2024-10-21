/*
	Using SQL queries create CarRental database with the following entities:
		• Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
		• Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, 	Available)
		• Employees (Id, FirstName, LastName, Title, Notes)
		• Customers (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)
		• RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, 	OrderStatus, Notes)
	Set the most appropriate data types for each column. 
	Set a primary key to each table. 
	Populate each table with only 3 records. 
	Make sure the columns that are present in 2 tables would be of the same data type. 
	Consider which fields are always required and which are optional. 
	Submit your CREATE TABLE and INSERT statements as Run queries & check DB
*/

-- Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
CREATE TABLE Categories (
	Id INTEGER PRIMARY KEY IDENTITY(1,1),
	CategoryName NVARCHAR(100) NOT NULL, 
	DailyRate NUMERIC NOT NULL,
	WeeklyRate	NUMERIC NOT NULL,
	MonthlyRate NUMERIC NOT NULL,
	WeekendRate NUMERIC NOT NULL
);
INSERT INTO Categories VALUES
	('Car', '10', '55', '200', '18.50'),
	('SUV', '12', '60', '230', '19.50'),
	('Truck', '15.99', '75.40', '280', '20.50')
;

-- Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, 	Available)
CREATE TABLE Cars (
	Id				INTEGER					PRIMARY KEY IDENTITY(1,1), 
	PlateNumber		NVARCHAR(15)			UNIQUE NOT NULL, 
	Manufacturer	NVARCHAR(50)			NOT NULL,
	Model			NVARCHAR(50)			NOT NULL, 
	CarYear			INTEGER					NOT NULL,
	CategoryId		INTEGER					NOT NULL,					-- foreign key
	Doors			INTEGER, 
	Picture			BINARY, 
	Condition		NVARCHAR (100), 	
	Available		BIT						NOT NULL
	FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);
INSERT INTO Cars 
	(PlateNumber,	Manufacturer,	Model,		CarYear,	CategoryId,		Condition,		Available)
VALUES
	('CB1234AA',	'Nissan',		'Silvia',	'1998',		1,				'Don''t ask.',	1),
	('CO9999OC',	'Mazda',		'RX-7',		'1994',		1,				'good',	1),
	('CB1234AC',	'Toyota',		'Hilux',	'2001',		3,				'bad',		0)
;

-- Employees (Id, FirstName, LastName, Title, Notes)
CREATE TABLE Employees(
	Id			INTEGER			PRIMARY KEY IDENTITY(1,1), 
	FirstName	NVARCHAR(100)	NOT NULL, 
	LastName	NVARCHAR(100)	NOT NULL,
	Title		NVARCHAR(100)	NOT NULL,
	Notes		NVARCHAR(100)
);

INSERT INTO Employees 
	(FirstName,		LastName,	Title)
VALUES
	('Anna',		'Miller',	'Desk'),
	('Georgi',		'Petrov',	'Registration'),
	('Svetlin',			'Nakov',	'CEO')
;

-- Customers (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)
CREATE TABLE Customers (
	Id					INTEGER			PRIMARY KEY IDENTITY(1,1),
	DriverLicenceNumber	INTEGER			NOT NULL,
	FullName			NVARCHAR(100)	NOT NULL,
	Address				NVARCHAR(200)	NOT NULL,
	City				NVARCHAR(100)	NOT NULL,
	ZIPCode				INTEGER,
	Notes				NVARCHAR(100)
);

INSERT INTO Customers
	(DriverLicenceNumber,	FullName,				Address,				City)
VALUES
	(1234567,				'Customer Full Name 1',	'Home Str. 1, Country',	'Sofia'),
	(7654432,				'Customer Full Name 1',	'Street Str. 2, State',	'Plovdiv'),
	(7654321,				'Customer Full Name 1',	'Bulgaria Tower 23',	'Varna')
;

-- RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, 	OrderStatus, Notes)
CREATE TABLE RentalOrders (
	Id					INTEGER					PRIMARY KEY IDENTITY(1,1), 
	EmployeeId			INTEGER					NOT NULL, --foreign key
	CustomerId			INTEGER					NOT NULL, --foreign key 
	CarId				INTEGER					NOT NULL, --foreign key
	TankLevel			NUMERIC,	
	KilometrageStart	INTEGER, 
	KilometrageEnd		INTEGER, 
	TotalKilometrage	INTEGER, 
	StartDate			DATE					NOT NULL, 
	EndDate				DATE					NOT NULL, 
	TotalDays			AS DATEDIFF(DAY, StartDate, EndDate) PERSISTED,		-- This might be problematic for JUDGE
	RateApplied			NVARCHAR(50)			NOT NULL,
	TaxRate				NUMERIC					DEFAULT 20, 	
	OrderStatus			NVARCHAR(50), 
	Notes				NVARCHAR(100)
	FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
	FOREIGN KEY (CustomerId) REFERENCES Customers(Id),
	FOREIGN KEY (CarId)		 REFERENCES Cars(Id),
);

INSERT INTO RentalOrders 
	(EmployeeId,	CustomerId,		CarId,	StartDate,	EndDate,	RateApplied)
VALUES
	(1, 2, 3, '01-01-2024', '07-05-2024', 'MonthlyRate'),
	(3, 2, 1, '01-01-2024', '07-01-2024', 'WeeklyRate'),
	(2, 1, 2, '06-01-2024', '07-02-2024', 'WeekendRate')
;