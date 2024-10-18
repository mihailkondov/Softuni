/*
	17. Backup Database

Backup the database SoftUni from the previous task into a file named "softuni-backup.bak". 
Delete your database from SQL Server Management Studio. 
Then restore the database from the created backup.
Hint: https://support.microsoft.com/en-gb/help/2019698/how-to-schedule-and-automate-backups-of-sql-serverdatabases-in-sql-se
*/

USE master;

BACKUP DATABASE SoftUni
TO DISK = 'D:\IT-Training\Softuni\5. DB\01.Databases Introduction\softuni-backup.bak'
WITH FORMAT, 
     NAME = 'Full Backup of SoftUni';
-- Output:
-- Processed 504 pages for database 'SoftUni', file 'SoftUni' on file 1.
-- Processed 1 pages for database 'SoftUni', file 'SoftUni_log' on file 1.
-- BACKUP DATABASE successfully processed 505 pages in 0.057 seconds (69.104 MB/sec).
--
-- Completion time: 2024-10-18T07:46:22.2402581+03:00


-- Check backup status	
SELECT 
    database_name,
    backup_start_date,
    backup_finish_date,
    backup_size,
    type,
    name
FROM msdb.dbo.backupset
WHERE database_name = 'SoftUni';

DROP DATABASE SoftUni;

-- RESTORING DATABASE
-- Step 1: Make sure the SoftUni database is not in use
	-- This step is not needed here, but I'm including it for future reference
ALTER DATABASE SoftUni
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

-- Step 2: Restore the database from the backup
RESTORE DATABASE SoftUni
FROM DISK = 'D:\IT-Training\Softuni\5. DB\01.Databases Introduction\softuni-backup.bak'
WITH REPLACE,  -- Overwrites the existing database
     RECOVERY; -- Finalizes the restore and brings the database online

-- Step 3: Switch back to multi-user mode
ALTER DATABASE SoftUni
SET MULTI_USER;