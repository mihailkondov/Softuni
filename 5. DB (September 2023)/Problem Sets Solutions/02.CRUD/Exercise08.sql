/*
	8. Find All Information About Employees

Create a SQL query that finds all information about the employees whose job title is "Sales Representative".
Example
	ID	'First Name'	'Last Name'	'Middle Name'		'Job Title'				'Dept ID'	'Mngr ID'	'Hire Date'	'Salary'	'Address ID'
	275	Michael			Blythe		G					Sales Representative	3			268			…			23100.00	60
	276	Linda			Mitchell	C					Sales Representative	3			268			…			23100.00	170
	277 Jillian			Carson		NULL				Sales Representative	3			268			…			23100.00	61
	…	…				…			…					…						…			…			…			…			…
*/
-- USE SoftUni;

SELECT * FROM Employees
WHERE JobTitle = 'Sales Representative';

-- The same bug as in the last problem:
	-- There is already an object named 'Towns' in the database 
-- Just resubmit a few times