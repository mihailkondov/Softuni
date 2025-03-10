/* 
	12. *Rich Wizard, Poor Wizard

Mr. Bodrog definitely likes his werewolves more than you. This is your last chance to survive! 
Give him some data to play his favorite game Rich Wizard, Poor Wizard. The rules are simple: 

You compare the deposits of every wizard with the wizard after him. 
If a wizard is the last one in the database, simply ignore it. 
In the end you have to sum the difference between the deposits.

Host Wizard		Host Wizard Deposit		Guest Wizard	Guest Wizard Deposit	Difference
Harry			10 000					Tom				12 000					-2000
Tom				12 000					…				…						…

At the end your query should return a single value: the SUM of all differences.

Example
	SumDifference
	44393.97
*/

WITH Difference_table AS (
	SELECT 
		  w1.Id AS [Host Id]-- This column is not needed for the query to work, but I am including it for clarity
		, w1.FirstName AS [Host Wizard]
		, w1.DepositAmount AS [Host Wizard Deposit]
		, w2.Id AS [Guest Id] -- This column is not needed as well, but I am including it for clarity
		, w2.FirstName AS [Guest Wizard]
		, w2.DepositAmount AS [Guest Wizard Deposit]
		, w1.DepositAmount - w2.DepositAmount AS [Difference]
	FROM WizzardDeposits AS w1
	JOIN WizzardDeposits AS w2 ON w2.ID = w1.Id + 1
)
SELECT 
	SUM(Difference) AS SumDifference
FROM 
	Difference_table
