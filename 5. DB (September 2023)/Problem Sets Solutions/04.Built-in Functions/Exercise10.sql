/*
	10. Rank Employees by Salary

Write a query that ranks all employees using DENSE_RANK. 
In the DENSE_RANK function, 
employees need to be 
	partitioned by 	Salary and 
	ordered by EmployeeID. 
You need to find only the employees, whose Salary is between 10000 and 50000 and 
order them by Salary in descending order.

Example
	EmployeeID	FirstName	LastName	Salary		Rank
	268			Stephen		Jiang		48100.00	1
	284			Amy			Alberts		48100.00	2
	288			Syed		Abbas		48100.00	3
	…			…			…			…			…
*/
SELECT 
	EmployeeID, FirstName, LastName, Salary, DENSE_RANK () OVER (PARTITION BY Salary ORDER BY EmployeeID) AS Rank
FROM 
	Employees
WHERE
	Salary >= 10000 AND Salary <= 50000
ORDER BY Salary DESC;