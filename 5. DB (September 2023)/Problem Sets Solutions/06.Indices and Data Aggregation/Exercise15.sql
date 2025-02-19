/* 
	15. Employees Average Salaries

Select all employees who earn more than 30000 into a new table. 
Then delete all employees who have ManagerID = 42 (in the new table). 
Then increase the salaries of all employees with DepartmentID = 1 by 5000. 
Finally, select the average salaries in each department.

Example
	DepartmentID	AverageSalary
	1				45166.6666
	…				…
*/
-- USE SoftUni;

-- Select all employees who earn more than 30000 into a new table:
SELECT 
	*
INTO
	#Temployees
FROM 
	Employees
WHERE
	Salary > 30000;

-- Then delete all employees who have ManagerID = 42 (in the new table):
-- 1) First set any foreign keys referencing the rows to be deleted to NULL
UPDATE 
	#Temployees
SET 
	ManagerId = NULL
WHERE ManagerId IN (
	SELECT		
		EmployeeID
	FROM
		#Temployees
	WHERE
		ManagerID = 42
	)
-- 2) then I am allowed to delete the rows
DELETE 
	#Temployees
WHERE 
	ManagerId = 42;

-- Then increase the salaries of all employees with DepartmentID = 1 by 5000:
UPDATE 
	#Temployees
SET 
	Salary = Salary + 5000
WHERE
	DepartmentID = 1;

-- Finally, select the average salaries in each department.
SELECT 
	  DepartmentID
	, AVG(Salary) AS AverageSalary
FROM 
	#Temployees
GROUP BY 
	DepartmentID;

-- DROP TABLE #Temployees
-- SELECT * FROM #Temployees