/*
	3. Many-To-Many Relationship

Create three tables and use appropriate data types.

Example:
  +---------------------+-----------------------+-----------------------+
  |	Students			|	Exams				|	StudentsExams	    |
  +---------------------+-----------------------+-----------------------+
  |	StudentID	Name	|	ExamID	Name		|	StudentID	ExamID	|
  |	1			Mila	|	101		SpringMVC	|	1			101		|
  |	2			Toni	|	102		Neo4j		|	1			102		|
  | 3			Ron		|	103		Oracle 11g	|	2			101		|
  +---------------------+-----------------------+	3			103		|
												|	2			102		|
												|	2			103		|
												+-----------------------+

*/
--IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DB_week3')
--BEGIN
--    CREATE DATABASE DB_week3;
--END;

--USE DB_week3;

CREATE TABLE Students (
	StudentID	INTEGER			PRIMARY KEY IDENTITY(1,1),
	Name		NVARCHAR(100)	NOT NULL
);

INSERT INTO	Students
	(Name)
VALUES
	 ('Mila')
	,('Toni')
	,('Ron')
;

CREATE TABLE Exams (
	ExamID		INTEGER			PRIMARY KEY IDENTITY(101,1),
	Name		NVARCHAR(100)	NOT NULL
);

INSERT INTO Exams
	(Name)
VALUES
	 ('SpringMVC')
	,('Neo4j')
	,('Oracle 11g')
;

CREATE TABLE StudentsExams (
	StudentID	INTEGER		NOT NULL,	
	ExamID		INTEGER		NOT NULL,
	CONSTRAINT PK_StudentsExams			PRIMARY KEY(StudentID, ExamID),
	CONSTRAINT FK_Students_StudentID	FOREIGN KEY(StudentID)  REFERENCES Students(StudentID),
	CONSTRAINT FK_Exams_ExamID			FOREIGN KEY(ExamID)		REFERENCES Exams(ExamID)
);

INSERT INTO StudentsExams
VALUES
	 (1, 101) 
	,(1, 102) 
	,(2, 101)
	,(3, 103)
	,(2, 102)
	,(2, 103)
;

--SELECT * FROM Exams;
--SELECT * FROM Students;
--SELECT * FROM StudentsExams;

--DROP TABLE StudentsExams;
--DROP TABLE Exams;
--DROP TABLE Students;