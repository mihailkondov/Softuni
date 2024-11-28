/*
    9.Volunteers in Sofia

Extract information about the volunteers, involved in 'Education program assistant' department, who live in Sofia. 
Select their name, phone number and their address in Sofia (skip city's name). 
Order the result by the name of the volunteers (ascending).

Example
    Name	            PhoneNumber	    Address
    Dilyana Stoeva	    0889412025	    15 Lyulyak str.
    Kiril Kostadinov	0896541233	    213 Tsarigradsko shose str.
    Yanko Totev	        0896369258	    54 Hristo Botev str.
    Zdravko Asenov	    0889652365	    6 Neven str.
*/
--USE Zoo;
--GO

SELECT 
    v.[Name] 
,   v.PhoneNumber
,   SUBSTRING(v.[Address], CHARINDEX(',', v.[Address]) +2 , LEN(v.[Address])) AS [Address]
FROM 
    Volunteers AS v JOIN 
    VolunteersDepartments AS vd ON v.DepartmentId = vd.Id
-- 
WHERE 
    v.[Address] LIKE '%Sofia%'
    AND vd.DepartmentName = 'Education program assistant' 
ORDER BY 
    v.[Name]

--SELECT * FROM Volunteers WHERE DepartmentId = 2 ORDER BY Name 


