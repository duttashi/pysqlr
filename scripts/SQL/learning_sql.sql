/* 
OBJECTIVE: To learn the basics of SQL for data management
SCRIPT CREATE DATE: 27 MAY 2018
REFERENCE: https://www.khanacademy.org/computing/computer-programming/sql/sql-basics
*/
-- CREATE A NEW EMPTY DATABASE
CREATE DATABASE DB2018;

-- USE THE DATABASE
use DB2018;

-- CREATE TABLE TO STORE DATA
CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER);

-- VIEW THE TABLE STRUCTURE
/*Method # 1: using the INFORMATION_SCHEMA.COLUMNS */
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='groceries';
/*Method # 2: using the sp_columns */
sp_columns 'groceries';
INSERT INTO groceries VALUES (1, 'Bananas', 4);
INSERT INTO groceries VALUES (2, 'Peanut Butter', 1);
INSERT INTO groceries VALUES (3, 'Dark chocolate bars', 2);
-- METHOD # 3: USE THE SELECT STATEMENT
SELECT * FROM groceries;

-- Suppose, I need to alter the table to add a new column. This can be done by using the Alter keyword
ALTER TABLE groceries ADD aisle INTEGER;

-- RENAME A COLUMN NAME
EXEC sp_rename 'groceries.aise', 'aisle', 'COLUMN';
-- SHOW TABLE STRUCTURE
sp_columns 'groceries';

-- Update the records to include the values for the new column
UPDATE groceries SET aisle=10 where id=1;
UPDATE groceries SET aisle=11 where id=2;
UPDATE groceries SET aisle=12 where id=3;

-- Show TABLE CONTENTS
SELECT * FROM groceries;

-- SHOW SELECTED COLUMN VALUES
SELECT * FROM groceries WHERE aisle > 10 ORDER BY aisle;

-- AGGREGRATING THE DATA
SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle;

-- COMPLEX QUERIES: USING AND/OR
-- Note: The `IDENTITY` functions to auto-increment the values
CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY IDENTITY(1,1), type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('biking', 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('biking', 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('dancing', 15, 200, 120);

SELECT * FROM exercise_logs;