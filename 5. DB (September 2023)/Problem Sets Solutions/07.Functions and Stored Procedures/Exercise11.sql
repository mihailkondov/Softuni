/* 
    11. Future Value Function
Your task is to create a function ufn_CalculateFutureValue that accepts as parameters – 
sum (decimal), 
yearly interest rate (float), 
and the number of years (int). 

It should calculate and return the future value of the initial 
sum rounded up to the fourth digit after the decimal delimiter. 

Use the following formula:
𝐹𝑉 = 𝐼 × ((1 + 𝑅)^𝑇)
• I – Initial sum
• R – Yearly interest rate
• T – Number of years

Example
Input:                                   
    Initial sum: 1000                       
    Yearly Interest rate: 10%
    years: 5
    ufn_CalculateFutureValue(1000, 0.1, 5)

Output:
    1610.5100
*/

CREATE OR ALTER FUNCTION ufn_CalculateFutureValue(
    @initialSum DECIMAL(15, 4)
   ,@yearlyInterestRate FLOAT
   ,@years INT
)
RETURNS DECIMAL(15,4)
BEGIN
    RETURN @initialSum * POWER( 1 + @yearlyInterestRate, @years) 
END
GO

-- DROP FUNCTION dbo.ufn_CalculateFutureValue