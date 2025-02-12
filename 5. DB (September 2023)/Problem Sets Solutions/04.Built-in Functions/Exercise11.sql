/*
	11. Find All Employees with Rank 2

Upgrade the query from the previous problem, so that it finds only the employees with a Rank 2. 
Order the result by Salary (descending).
Example
	EmployeeID	FirstName	LastName	Salary		Rank
	284			Amy			Alberts		48100.00	2
	292			Martin		Kulov		48000.00	2
	71			Wendy		Kahn		43300.00	2
	…			…			…			…			…
*/
-- USE SoftUni;

SELECT
	EmployeeID, FirstName, LastName, Salary, DENSE_RANK () OVER (PARTITION BY Salary ORDER BY EmployeeID) AS Rank
INTO #temp_table
FROM 
	Employees
WHERE
	Salary >= 10000 AND Salary <= 50000
ORDER BY Salary DESC;


SELECT 
	* 
FROM 
	#temp_table
WHERE Rank = 2
ORDER BY Salary DESC;

DROP TABLE #temp_table;
