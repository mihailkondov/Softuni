/* 
	5. Deposits Sum

Select all deposit groups and their total deposit sums.

Example
	DepositGroup	TotalSum
	Blue Phoenix	819598.73
	Human Pride		1041291.52
	…				…
*/
-- USE Gringotts;

SELECT 
	DepositGroup,
	SUM(DepositAmount) AS TotalSum
FROM 
	WizzardDeposits
GROUP BY
	DepositGroup;