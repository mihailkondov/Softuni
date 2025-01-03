/*
	6. University Database

Create a new database and design the following structure:

		__Students__			__Agenda__			__Subjects__
		StudentID	<-------+-o StudentID	  +--->	SubjectID
		StudentNumber		|	SubjectID-----+		SubjectName		
		StudentName			|
	+---MajorID				|	__Payments__
	|						|	PaymentID
	|	__Majors__			|	PaymentDate
	+-> MajorID				|	PaymentAmount
		Name				+-o StudentID

*/
--USE master;
--CREATE DATABASE W3UniversityDatabase;
--GO

CREATE TABLE Majors(
	MajorID			INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name			NVARCHAR(100)
);

CREATE TABLE Students(
	StudentID		INTEGER			PRIMARY KEY IDENTITY(1,1),
	StudentNumber	INTEGER,
	StudentName		NVARCHAR(100),
	MajorID			INTEGER			FOREIGN KEY REFERENCES Majors(MajorID)
);

CREATE TABLE Payments(
	PaymentID		INTEGER			PRIMARY KEY IDENTITY(1,1),
	PaymentDate		DATE,
	PaymentAmount	NUMERIC(7,2),
	StudentID		INTEGER			FOREIGN KEY REFERENCES Students(StudentID)
);

CREATE TABLE Subjects(
	SubjectID		INTEGER			PRIMARY KEY IDENTITY(1,1),
	SubjectName		NVARCHAR(100)
);

CREATE TABLE Agenda(
	StudentID	INTEGER	NOT NULL	FOREIGN KEY REFERENCES Students(StudentID),
	SubjectID	INTEGER	NOT NULL	FOREIGN KEY REFERENCES Subjects(SubjectID),
	CONSTRAINT PK_Agenda PRIMARY KEY (StudentID, SubjectID)
);

-- DROP DATABASE W3UniversityDatabase;