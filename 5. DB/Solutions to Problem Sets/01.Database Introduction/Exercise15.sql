/* 
Using SQL queries create Hotel database with the following entities:
	• Employees (Id, FirstName, LastName, Title, Notes)
	• Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
	• RoomStatus (RoomStatus, Notes)
	• RoomTypes (RoomType, Notes)
	• BedTypes (BedType, Notes)
	• Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
	• Payments (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
	• Occupancies (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
Set the most appropriate data types for each column. 
Set a primary key to each table. 
Populate each table with only 3 records. 
Make sure the columns that are present in 2 tables would be of the same data type. 
Consider which fields are always required and which are optional. 
Submit your CREATE TABLE and INSERT statements as Run queries & check DB
*/

CREATE TABLE Employees (
	Id			INTEGER			PRIMARY KEY IDENTITY(1,1), 
	FirstName	NVARCHAR(100)	NOT NULL,
	LastName	NVARCHAR(100)	NOT NULL, 
	Title		NVARCHAR(100)	NOT NULL, 
	Notes		NVARCHAR(100)
);
INSERT INTO Employees 
	(FirstName,		LastName,	Title)
VALUES
	('Minerva',		'McGonagall',	'Professor of Transfiguration'),
	('Severus',		'Snape',		'Potions Professor of Hogwarts'),
	('Albus',		'Dumbledore ',	'Headmaster of Hogwarts')
;

CREATE TABLE Customers (
	AccountNumber	INTEGER			PRIMARY KEY IDENTITY(1,1), 
	FirstName		NVARCHAR(100)	NOT NULL, 
	LastName		NVARCHAR(100)	NOT NULL, 
	PhoneNumber		NVARCHAR(20)	NOT NULL, 
	EmergencyName	NVARCHAR(100), 
	EmergencyNumber	NVARCHAR(100), 
	Notes			NVARCHAR(100)
);
INSERT INTO Customers 
	(FirstName,		LastName,		PhoneNumber)
VALUES
	('Hermione',	'Granger',		'1234567890'),
	('Harry',		'Potter',		'4350984369'),
	('Ronald',		'Weasley',		'2453647587')
;

CREATE TABLE RoomStatus (
	RoomStatus	NVARCHAR(10)	PRIMARY KEY, 
	Notes		NVARCHAR(100)
);
INSERT INTO RoomStatus
VALUES
	('TAKEN',		'Taken means that the room was rented out'),
	('FREE',		'Free rooms can be booked by future customers'),
	('RENOVATION',	'The room is being renovated and won''t be available for unknown period of time')
;

CREATE TABLE RoomTypes(
	RoomType	NVARCHAR(15)	PRIMARY KEY,
	Note		NVARCHAR(100)
);
INSERT INTO RoomTypes (RoomType)
VALUES
	('BIG'),
	('MEDIUM'),
	('SMALL')
;

CREATE TABLE BedTypes (
	BedType		NVARCHAR(20)	PRIMARY KEY,
	Notes		NVARCHAR(100)
);
INSERT INTO BedTypes (BedType)
VALUES
	('SINGLE'),
	('DOUBLE'),
	('BUNK')
;

CREATE TABLE Rooms (
	RoomNumber	INTEGER			PRIMARY KEY, 
	RoomType	NVARCHAR(15)	NOT NULL, --foreign key
	BedType		NVARCHAR(20)	NOT NULL, --foreign key
	Rate		NUMERIC			NOT NULL, 
	RoomStatus	NVARCHAR(10)	NOT NULL, --foreign key
	Notes		NVARCHAR(100)
	FOREIGN KEY (RoomType)	REFERENCES RoomTypes(RoomType),
	FOREIGN KEY (BedType)	REFERENCES BedTypes(BedType),
	FOREIGN KEY (RoomStatus) REFERENCES RoomStatus(RoomStatus)
);
INSERT INTO Rooms 
	(RoomNumber,	RoomType,	BedType,	Rate,	RoomStatus)
VALUES
	('101',			'MEDIUM',	'BUNK',		'60',	'TAKEN'),
	('102',			'SMALL',	'SINGLE',	'80',	'RENOVATION'),
	('201',			'BIG',		'DOUBLE',	'120',	'FREE')
;

CREATE TABLE Payments (
	Id					INTEGER PRIMARY KEY IDENTITY(1,1),
	EmployeeId			INTEGER	NOT NULL, -- foreign key
	PaymentDate			DATE	NOT NULL, 
	AccountNumber		INTEGER	NOT NULL, -- foreign key
	FirstDateOccupied	DATE	NOT NULL,
	LastDateOccupied	DATE	NOT NULL, 
	TotalDays			AS DATEDIFF(DAY, FirstDateOccupied, LastDateOccupied),
	AmountCharged		NUMERIC	NOT NULL, 
	TaxRate				NUMERIC DEFAULT 20, 
	TaxAmount			AS AmountCharged * TaxRate/100	PERSISTED,
	PaymentTotal		AS AmountCharged * (100 + TaxRate)/100,
	Notes				NVARCHAR(100)
);
INSERT INTO Payments 
	(EmployeeId,	PaymentDate,		AccountNumber,	FirstDateOccupied,	LastDateOccupied,	AmountCharged)
VALUES
	(3,				'09-11-2001',		2,				'09-15-2023',		'09-21-2023',		300),
	(1,				'09-12-2021',		2,				'09-30-2021',		'10-21-2023',		500),
	(2,				'01-01-2024',		3,				'02-12-2023',		'02-17-2023',		300)
;

CREATE TABLE Occupancies (
	Id				INTEGER			PRIMARY KEY IDENTITY(1,1),
	EmployeeId		INTEGER			NOT NULL, -- foreign key
	DateOccupied	DATE			NOT NULL,
	AccountNumber	INTEGER			NOT NULL, -- foreign key
	RoomNumber		INTEGER			NOT NULL, -- foreign key
	RateApplied		NUMERIC			NOT NULL,
	PhoneCharge		BIT, 
	Notes			NVARCHAR(100)
	FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
	FOREIGN KEY (AccountNumber) REFERENCES Customers(AccountNumber),
	FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
);
INSERT INTO Occupancies 
	(EmployeeId,	 DateOccupied,	AccountNumber,	RoomNumber, RateApplied)
VALUES
	('1',			'12-22-2023',	'1',			'101',		'60'),
	('2',			'01-03-2024',	'2',			'102',		'75'),
	('1',			'08-14-2024',	'1',			'201',		'120')
;
