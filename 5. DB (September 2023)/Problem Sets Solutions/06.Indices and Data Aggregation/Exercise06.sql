/*
	6. Deposits Sum for Ollivander Family

Select all deposit groups and their total deposit sums, 
but only for the wizards, who have their magic wands crafted 
by the Ollivander family.

Example
	DepositGroup	TotalSum
	Blue Phoenix	52968.96
	Human Pride		188366.86
	…				…
*/
-- USE Gringotts

SELECT
	DepositGroup,
	SUM(DepositAmount)
FROM
	WizzardDeposits
WHERE 
	MagicWandCreator = 'Ollivander family'
GROUP BY
	DepositGroup --, MagicWandCreator -- <-No need to specify MagicWandCreator, but it makes me more confident that I am not summing the wrong groups.
