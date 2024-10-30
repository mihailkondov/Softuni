CREATE DATABASE DB_week7;
GO
USE DB_week7;
GO

-- Step 1: Create the AccountHolders table
CREATE TABLE AccountHolders (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- Primary Key with auto-increment
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    SSN CHAR(9) UNIQUE NOT NULL  -- Assuming SSN has a fixed length of 9 characters
);

-- Step 2: Create the Accounts table with a foreign key referencing AccountHolders
CREATE TABLE Accounts (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- Primary Key with auto-increment
    AccountHolderId INT NOT NULL,
    Balance DECIMAL(18, 2) DEFAULT 0.00,  -- Default balance is 0.00
    CONSTRAINT FK_Accounts_AccountHolders 
        FOREIGN KEY (AccountHolderId) REFERENCES AccountHolders(Id)
        ON DELETE CASCADE  -- Optional: deletes accounts when the account holder is deleted
);

-- Step 3: Insert 3 entries in AccountHolders table
INSERT INTO AccountHolders (FirstName, LastName, SSN)
VALUES
    ('John', 'Doe', '123456789'),
    ('Jane', 'Smith', '987654321'),
    ('Alice', 'Johnson', '456789123');

-- Step 4: Insert 1-3 accounts for each account holder in the Accounts table
INSERT INTO Accounts (AccountHolderId, Balance)
VALUES
    (1, 1000.00),  -- John Doe's account
    (1, 1500.00),
    (2, 2000.00),  -- Jane Smith's account
    (3, 500.00),   -- Alice Johnson's accounts
    (3, 750.00),
    (3, 1250.00);

-- Verify the results
SELECT * FROM AccountHolders;
SELECT * FROM Accounts;
