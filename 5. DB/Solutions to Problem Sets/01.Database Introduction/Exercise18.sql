/*
	18. Basic Insert

Use the SoftUni database and insert some data using SQL queries.
• Towns: Sofia, Plovdiv, Varna, Burgas
• Departments: Engineering, Sales, Marketing, Software Development, Quality Assurance
• Employees:
	Name					Job	Title			Department				Hire Date		Salary
	Ivan Ivanov Ivanov		.NET Developer		Software Development	01/02/2013		3500.00
	Petar Petrov Petrov		Senior Engineer		Engineering				02/03/2004		4000.00
	Maria Petrova Ivanova	Intern				Quality Assurance		28/08/2016		 525.25
	Georgi Teziev Ivanov	CEO					Sales					09/12/2007		3000.00
	Peter Pan Pan			Intern				Marketing				28/08/2016		 599.88
*/

USE SoftUni;

INSERT INTO Towns (Towns.Name)
VALUES ('Sofia'), ('Plovdiv'), ('Varna'), ('Burgas');

INSERT INTO Departments (Departments.Name)
VALUES ('Engineering'), ('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance');


INSERT INTO Employees 
	(FirstName,		MiddleName,		LastName,	JobTitle,				DepartmentId,			HireDate,		Salary)
SELECT 
	e.FirstName,	e.MiddleName,	e.LastName,	e.JobTitle,				d.Id,					e.HireDate,		e.Salary
FROM (
	VALUES
		('Ivan',		'Ivanov',		'Ivanov',	'.NET Developer',		'Software Development',	'02-01-2013',	'3500.00'),
		('Petar',		'Petrov',		'Petrov',	'Senior Engineer',		'Engineering',			'03-02-2004',	'4000.00'),
		('Maria',		'Petrova',		'Ivanova',	'Intern',				'Quality Assurance',	'08-28-2016',	 '525.25'),
		('Georgi',		'Teziev',		'Ivanov',	'CEO',					'Sales',				'12-09-2007',	'3000.00'),
		('Peter',		'Pan',			'Pan',		'Intern',				'Marketing',			'08-28-2016',	 '599.88')
)	AS e
	(FirstName,		MiddleName,		LastName,	JobTitle,				DepartmentName,			HireDate,		Salary)
JOIN Departments AS d ON d.Name = e.DepartmentName;

SELECT * FROM Employees;
