DECLARE @MinionName VARCHAR(50) = 'Misho';
SELECT [Name] FROM Minions WHERE [Name] = @MinionName;
GO
--1. Check what's in the database
DECLARE	@TownParameter VARCHAR(50) = 'Sofia';
DECLARE	@VillainName VARCHAR(50) = '';
--Look for Villain with the same name
SELECT TOP 1 [Id] FROM Villains WHERE [Name] = @VillainName
--Look for Town with the same name
SELECT [Id] FROM Towns WHERE [Name] = @TownParameter

--other stuff
SELECT [Id] FROM Users WHERE Username = @usernameParam AND Password = @passwordParam
--Implement logic in the code

--Insert new value in case
	--Both town and villain already in DB

DECLARE @VillainIdParameter INT = '1'; --Gru
DECLARE @MinionName VARCHAR(50) = 'NewGuy';
DECLARE @MinionAge INT = '99';
DECLARE @TownId INT = '4'; --Sofia
BEGIN TRANSACTION
BEGIN TRY
	DECLARE @MinionIdParameter INT;
	INSERT INTO Minions ([Name],[Age],[TownId])
	VALUES (@MinionName, @MinionAge, @TownId);
	SELECT @MinionIdParameter = SCOPE_IDENTITY();
	INSERT INTO MinionsVillains ([MinionId], [VillainId])
	VALUES 
		(@MinionIdParameter, @VillainIdParameter);
END TRY
BEGIN CATCH
	ROLLBACK
END CATCH
GO
	--Only town in DB

DECLARE @VillainName VARCHAR(50) = 'NewVillain';  --USER INPUT
DECLARE @MinionName VARCHAR(50) = 'MV';
DECLARE @MinionAge INT = '100';
DECLARE @TownId INT = '1'; --Plovdiv
BEGIN TRANSACTION
BEGIN TRY
	DECLARE @MinionIdParameter INT;
	DECLARE @VillainIdParameter INT;
	INSERT INTO Minions ([Name],[Age],[TownId])
	VALUES (@MinionName, @MinionAge, @TownId);
	SELECT @MinionIdParameter = SCOPE_IDENTITY();
	INSERT INTO Villains([Name],[EvilnessFactorId])
	VALUES (@VillainName, '4');
	SELECT @VillainIdParameter = SCOPE_IDENTITY();
	INSERT INTO MinionsVillains ([MinionId], [VillainId])
	VALUES 
		(@MinionIdParameter, @VillainIdParameter);
END TRY
BEGIN CATCH
	ROLLBACK
	PRINT('ERROR: Minion or Villain or MinionVillain entry insertion failed')
END CATCH
GO
	--Only villain in DB


DECLARE @VillainId INT = '1'; --Gru --USER INPUT
DECLARE @TownName VARCHAR(50) = 'NewTown';  --USER INPUT
DECLARE @MinionName VARCHAR(50) = 'MT'; --USER INPUT
DECLARE @MinionAge INT = '101'; --USER INPUT
BEGIN TRANSACTION
BEGIN TRY
	DECLARE @MinionIdParameter INT;
	DECLARE @TownIdParameter INT;
	--AddTown
	INSERT INTO Towns([Name])
	VALUES (@TownName);
	SELECT @TownIdParameter = SCOPE_IDENTITY();
	--Add new Minion
	INSERT INTO Minions ([Name],[Age],[TownId])
	VALUES (@MinionName, @MinionAge, @TownIdParameter);
	SELECT @MinionIdParameter = SCOPE_IDENTITY();
	--Add existing villain to minion
	INSERT INTO MinionsVillains ([MinionId], [VillainId])
	VALUES 
		(@MinionIdParameter, @VillainId);
END TRY
BEGIN CATCH
	ROLLBACK
	PRINT('ERROR: Town, Minion or MinionVillain entry insertion failed')
END CATCH
GO

	--Neither town nor Villain in DB
SELECT * FROM Minions
SELECT * FROM MinionsVillains
SELECT * FROM Villains
SELECT * FROM Towns
SELECT * FROM EvilnessFactors

DECLARE @VillainName VARCHAR(50) = 'Villain2'; --Gru --USER INPUT
DECLARE @TownName VARCHAR(50) = 'NewTownV';  --USER INPUT
DECLARE @MinionName VARCHAR(50) = 'MTV'; --USER INPUT
DECLARE @MinionAge INT = '102'; --USER INPUT
BEGIN TRANSACTION
BEGIN TRY
	DECLARE @MinionIdParameter INT;
	DECLARE @TownIdParameter INT;
	DECLARE @VillainIdParameter INT;
	--Add new Town
	INSERT INTO Towns([Name])
	VALUES (@TownName);
	SELECT @TownIdParameter = SCOPE_IDENTITY();
	--Add new Villain
	INSERT INTO Villains ([Name],[EvilnessFactorId])
	VALUES (@VillainName, '4');
	SELECT @VillainIdParameter = SCOPE_IDENTITY();
	--Add new Minion
	INSERT INTO Minions ([Name],[Age],[TownId])
	VALUES (@MinionName, @MinionAge, @TownIdParameter);
	SELECT @MinionIdParameter = SCOPE_IDENTITY();
	--Relate Villain to Minion
	INSERT INTO MinionsVillains ([MinionId], [VillainId])
	VALUES 
		(@MinionIdParameter, @VillainIdParameter);
	COMMIT;
END TRY
BEGIN CATCH
	ROLLBACK
	PRINT('ERROR: Town, Minion, Villain or MinionVillain entry insertion failed')
END CATCH
	