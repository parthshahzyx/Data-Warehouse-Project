/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'datawarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- 1. Drop the database if it already exists
-- Note: 'DROP DATABASE IF EXISTS' automatically cleans up safely in Postgres.
DROP DATABASE IF EXISTS datawarehouse;

-- 2. Create the 'datawarehouse' database
-- PostgreSQL converts unquoted names to lowercase by default.
CREATE DATABASE datawarehouse;

/* 
👉 IMPORTANT INSTRUCTION FOR RUNNING THIS SCRIPT IN DBEAVER:
   At this point, you MUST switch your active connection context to the 
   newly created 'datawarehouse' database before running the schema commands below.
   (Double-click 'datawarehouse' in your sidebar or press Ctrl+0 / Cmd+0).
*/

-- 3. Create Schemas inside the active database
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;
