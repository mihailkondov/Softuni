/*
	19. Find First 10 Started Projects
Create a SQL query that finds the first 10 projects which were started, 
select all the information about them and 
order the result by starting date, 
then by name.
*/
--USE SoftUni;

SELECT TOP(10) 
	*
FROM 
	Projects
ORDER BY 
	StartDate ASC
	,Name;

-- Again Towns error, resubmit this exact solution until the test passes