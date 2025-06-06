/*
	7. Define Function

Define a function ufn_IsWordComprised(@setOfLetters, @word) that returns true or false, depending on 
that if the word is comprised of the given set of letters. 

Example
	SetOfLetters	Word	Result
	oistmiahf		Sofia	1
	oistmiahf		halves	0
	bobr			Rob		1
	pppp			Guy		0
*/

CREATE OR ALTER FUNCTION ufn_IsWordComprised(
	@setOfLetters NVARCHAR(30)
,	@word NVARCHAR(200)
) RETURNS BIT
BEGIN
	DECLARE @wordIndex INT = 1
	WHILE (@wordIndex <= LEN(@word))
	BEGIN
		DECLARE @currentCharacter NCHAR(1) = SUBSTRING(@word, @wordIndex, 1)
		 
		IF CHARINDEX(@currentCharacter, @setOfLetters) = 0
		BEGIN
			RETURN 0
		END
		SET @wordIndex += 1
	END
	
	RETURN 1
END

----
--GO
--SELECT 
--	v.SetOfLetters
--,	v.Word
--,	dbo.ufn_IsWordComprised(SetOfLetters, Word) AS Result
--FROM
--	(VALUES
--		('oistmiahf',		'Sofia')
--	,	('oistmiahf',		'halves')
--	,	('bobr',			'Rob')
--	,	('pppp',			'Guy')
--	,	('Guy',				'gg')
--	) AS v (SetOfLetters, Word)


	/*
SetOfLetters	Word	Result
	oistmiahf		Sofia	1
	oistmiahf		halves	0
	bobr			Rob		1
	pppp			Guy		0
	*/