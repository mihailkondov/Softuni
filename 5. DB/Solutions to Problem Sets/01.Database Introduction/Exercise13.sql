/* 
• Directors (Id, DirectorName, Notes)
• Genres (Id, GenreName, Notes)
• Categories (Id, CategoryName, Notes)
• Movies (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
 
Set the most appropriate data types for each column. 
Set a primary key to each table. 
Populate each table with exactly 5 records.
Make sure the columns that are present in 2 tables would be of the same data type. 
Consider which fields are always required and which are optional. 
Submit your CREATETABLE and INSERT statements as Run queries & check DB
*/

-- CREATE DATABASE Movies; -- <- This one is not needed for JUDGE.

CREATE TABLE Directors (
	Id INTEGER PRIMARY KEY IDENTITY(1,1), --Autoincrementing ID
	DirectorName	NVARCHAR(100)	NOT NULL,
	Notes			NVARCHAR(100)
);
INSERT INTO Directors (DirectorName, Notes) VALUES
('Atanas', 'a.k.a.Nasko'),
('Devon', 'director'),
('Fred', 'From Limp Bizkit?'),
('Filler', NULL),
('Peter', 'Description');

CREATE TABLE Genres (
	Id			INTEGER			PRIMARY KEY IDENTITY(1,1),
	GenreName	NVARCHAR(100)	UNIQUE	NOT NULL ,
	Notes		NVARCHAR(100)
);
INSERT INTO Genres (GenreName) VALUES
('Action'),
('Romance'),
('Comedy'),
('Drame'),
('Thriller');

CREATE TABLE Categories (
	Id				INTEGER			PRIMARY KEY IDENTITY(1,1),
	CategoryName	NVARCHAR(100)	UNIQUE	NOT NULL, 
	Notes			NVARCHAR(100)
);
INSERT INTO Categories (CategoryName) VALUES
('Family'),
('B Movie'),
('Category'),
('Category 2'),
('Category 3');
CREATE TABLE Movies (
	Id				INTEGER			PRIMARY KEY IDENTITY(1,1),
	Title			NVARCHAR(100)	NOT NULL, 
	DirectorId		INTEGER			NOT NULL,	 -- Foreign key
	CopyrightYear	INTEGER, 
	Length			INTEGER, 
	GenreId			INTEGER,					 -- Foreign key
	CategoryId		INTEGER,					 -- Foreign key
	Rating			NUMERIC, 
	Notes			NVARCHAR(100)
	FOREIGN KEY (DirectorId) REFERENCES Directors(Id),
	FOREIGN KEY (GenreId) REFERENCES Genres(Id),
	FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);
INSERT INTO Movies (Title, DirectorId, GenreId, CategoryId) VALUES
('Movie Title 1', 1, 1, 1),
('Movie Title 2', 2, 2, 2),
('Movie Title 3', 4,5,3),
('Movie Title 4', 1, 2, 3),
('Movie Title 5', 5, 5, 5);


