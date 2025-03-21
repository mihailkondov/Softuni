/*
	4. Self-Referencing 

Create one table and use appropriate data types.
Example
	Teachers
	TeacherID	Name	ManagerID
	101			John	NULL
	102			Maya	106
	103			Silvia	106
	104			Ted		105
	105			Mark	101
	106			Greta	101

Insert the data from the example above and add primary keys and foreign keys. 
The foreign key should be between ManagerId and TeacherId.
*/

-- USE DB_week3;
CREATE TABLE Teachers (
	TeacherID	INTEGER PRIMARY KEY IDENTITY(101, 1),
	Name		NVARCHAR(100),
	ManagerID	INTEGER
);

INSERT INTO Teachers
	(Name,		ManagerID)
VALUES
	 ('John',	NULL)
	,('Maya',	106)
	,('Silvia',	106)
	,('Ted',	105)
	,('Mark',	101)
	,('Greta',	101)

ALTER TABLE 
	Teachers
ADD CONSTRAINT 
	FK_Teachers_ManagerID FOREIGN KEY(ManagerID) REFERENCES Teachers(TeacherID)

-- SELECT * FROM Teachers