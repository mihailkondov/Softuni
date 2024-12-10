namespace _04.Add_Minion
{
	public static class SqlQueries
	{
		/// <summary>
		/// Use @Town to retrieve town Id from the database
		/// </summary>
		public const string CHECK_TOWN = @"
			SELECT TOP 1 [Id] FROM Towns WHERE [Name] = @Town
		";

		/// <summary>
		/// Use @VillainName to return villain ID from the database.
		/// </summary>
		public const string RETURN_VILLAIN_BY_NAME = @"
			SELECT TOP 1 [Id] FROM Villains WHERE [Name] = @VillainName
		";
		/// <summary>
		/// Insert int @VillainId (RETURN_VILLAIN_BY_NAME), string @MinionName, int @MinionAge, int @TownId (CHECK_TOWN). Use when both town and villain are not in the database.
		/// </summary>
		public const string ADD_MINION = @"
			DECLARE @MinionId INT;
			BEGIN TRANSACTION
			BEGIN TRY
				INSERT INTO Minions ([Name],[Age],[TownId])
				VALUES (@MinionName, @MinionAge, @TownId);
				SELECT @MinionId = SCOPE_IDENTITY();
				INSERT INTO MinionsVillains ([MinionId], [VillainId])
				VALUES 
					(@MinionId, @VillainId);
				COMMIT;
			END TRY
			BEGIN CATCH
				ROLLBACK
			END CATCH
		";
		/// <summary>
		/// Insert string @VillainName, string @MinionName, int @MinionAge, int @TownId (use CHECK_TOWN)
		/// </summary>
		public const string ADD_MINION_VILLAIN = @"
			DECLARE @MinionId INT;
			DECLARE @VillainId INT;			
			BEGIN TRANSACTION
			BEGIN TRY
				INSERT INTO Minions ([Name],[Age],[TownId])
				VALUES (@MinionName, @MinionAge, @TownId);
				SELECT @MinionId = SCOPE_IDENTITY();
				INSERT INTO Villains([Name],[EvilnessFactorId])
				VALUES (@VillainName, '4');
				SELECT @VillainId = SCOPE_IDENTITY();
				INSERT INTO MinionsVillains ([MinionId], [VillainId])
				VALUES 
					(@MinionId, @VillainId);
				COMMIT;
			END TRY
			BEGIN CATCH
				ROLLBACK
				PRINT('ERROR: Minion or Villain or MinionVillain entry insertion failed')
			END CATCH
		";

		/// <summary>
		/// @VillainId (RETURN_VILLAIN_BY_NAME), @TownName, @MinionName, @MinionAge
		/// </summary>
		public const string ADD_MINION_TOWN = @"
			DECLARE @MinionId INT;
			DECLARE @TownId INT;			
			BEGIN TRY
				INSERT INTO Towns([Name])
				VALUES (@TownName);
				SELECT @TownId = SCOPE_IDENTITY();
				INSERT INTO Minions ([Name],[Age],[TownId])
				VALUES (@MinionName, @MinionAge, @TownId);
				SELECT @MinionId = SCOPE_IDENTITY();
				INSERT INTO MinionsVillains ([MinionId], [VillainId])
				VALUES 
					(@MinionId, @VillainId);
				COMMIT;
			END TRY
			BEGIN CATCH
				ROLLBACK
				PRINT('ERROR: Town, Minion or MinionVillain entry insertion failed')
			END CATCH
		";
		/// <summary>
		/// @VillainName, @TownName, @MinionName, @MinionAge - use when neither town nor villain exists in the database.
		/// </summary>
		public const string ADD_MINION_VILLAIN_TOWN = @"
			BEGIN TRANSACTION
			BEGIN TRY
				DECLARE @MinionId INT;
				DECLARE @TownId INT;
				DECLARE @VillainId INT;
				INSERT INTO Towns([Name])
				VALUES (@TownName);
				SELECT @TownId = SCOPE_IDENTITY();
				INSERT INTO Villains ([Name],[EvilnessFactorId])
				VALUES (@VillainName, '4');
				SELECT @VillainId = SCOPE_IDENTITY();
				INSERT INTO Minions ([Name],[Age],[TownId])
				VALUES (@MinionName, @MinionAge, @TownId);
				SELECT @MinionId = SCOPE_IDENTITY();
				INSERT INTO MinionsVillains ([MinionId], [VillainId])
				VALUES 
					(@MinionId, @VillainId);
				COMMIT;
			END TRY
			BEGIN CATCH
				ROLLBACK
				PRINT('ERROR: Town, Minion, Villain or MinionVillain entry insertion failed')
			END CATCH
		";
	}
}
