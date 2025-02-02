/*
	7. Deposits Filter

Select all deposit groups and their total deposit sums, 
but only for the wizards, who have their magic wands crafted by the Ollivander family. 
Filter total deposit amounts lower than 150000. 
Order by total deposit amount in descending order.

Example
	DepositGroup	TotalSum
	Troll Chest		126585.18
	…				…
*/

-- USE Gringotts

SELECT
	DepositGroup,
	SUM(DepositAmount) AS TotalSum
FROM
	WizzardDeposits
WHERE 
	MagicWandCreator = 'Ollivander family'
GROUP BY
	DepositGroup
HAVING 
	SUM(DepositAmount) < 150000 -- I can't use TotalSum from above here, so I'm calculating it a second time. 
								-- I could avoid that using a Common Table Expression (WITH <table name> AS ( SELECT ...)
ORDER BY TotalSum DESC;


---- Common Table Expression (CTE) version:
	--WITH OlivanderDeposits AS (
	--	SELECT
	--		DepositGroup,
	--		SUM(DepositAmount) AS TotalSum
	--	FROM
	--		WizzardDeposits
	--	WHERE 
	--		MagicWandCreator = 'Ollivander family'
	--	GROUP BY
	--		DepositGroup)
	--SELECT 
	--	DepositGroup,
	--	TotalSum
	--FROM 
	--	OlivanderDeposits
	--WHERE
	--	TotalSum < 150000
	--ORDER BY TotalSum DESC; -- This query gives the same result as the query above
