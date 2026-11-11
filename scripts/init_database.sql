-- Create database 'DataWareHouse'
USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
  ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWareHouse;
END;
CREATE DATABASE DataWareHouse;

USE DataWareHouse;

-- Add 'Bronze' schema
CREATE SCHEMA bronze;
GO

-- Add 'Silver' schema
CREATE SCHEMA silver;
GO

-- Add 'Gold' schema
CREATE SCHEMA gold;
GO
