/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'data_db' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'data_db')
BEGIN
    ALTER DATABASE data_db SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE data_db;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE data_db;
GO

USE data_db;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
