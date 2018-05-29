/* 
OBJECTIVE: To learn the basics of SQL for data management
SCRIPT CREATE DATE: 27 MAY 2018
REFERENCE: https://www.khanacademy.org/computing/computer-programming/sql/sql-basics
REFERENCE: https://www.w3schools.com/sql
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
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ('dancing', 15, 210, 120);

SELECT * FROM exercise_logs;

-- Date: 29/May/2018
-- Learn how to use Operators like DISTINCT, WHERE, AND, OR, NOT, ORDER BY, LIKE, BETWEEN

SELECT DISTINCT type, minutes FROM exercise_logs; -- will return error because DISTINCT does not work on text data
sp_columns 'groceries'; -- see the table structure. It can be seen that name is text. Convert text to varchar(max) to use DISTINCT. See this SO post (https://stackoverflow.com/questions/20494116/select-the-field-as-distinct-having-data-type-as-text-sql-server/20494254)
SELECT DISTINCT CONVERT(VARCHAR(MAX), name) FROM groceries;
SELECT DISTINCT CAST(name as varchar(max)) FROM groceries;

SELECT DISTINCT id, minutes FROM exercise_logs;
SELECT COUNT( DISTINCT minutes) FROM exercise_logs; -- COUNT() only works on numeric values.
SELECT * FROM exercise_logs WHERE calories>100;

-- SQL LIKE Operator
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
/*  
There are two wildcards used in conjunction with the LIKE operator:
% - The percent sign represents zero, one, or multiple characters
_ - The underscore represents a single character
*/
SELECT * FROM groceries;
SELECT * FROM groceries WHERE name LIKE 'B%'; -- Finds any values that begins with "B"
SELECT * FROM groceries WHERE name LIKE '%s'; -- Finds any values that end with "s"
SELECT * FROM groceries WHERE name LIKE '_a%'; -- Finds any values that have "a" in the second position
SELECT * FROM groceries WHERE name LIKE 'B_%_%';-- Finds any values that start with "B" and are at least 3 characters in length
SELECT * FROM groceries WHERE name LIKE 'B%s'; -- Finds any values that start with "B" and ends with "s"

/*
The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.

IN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
*/
SELECT * FROM groceries;
SELECT * FROM groceries WHERE quantity IN (4);
SELECT * FROM groceries WHERE name IN ('Bananas'); -- This command will throw error, "The data types text and varchar are incompatible in the equal to operator."
-- Solution: Convert 'Text' datatype to VARCHAR. See this SO post (https://stackoverflow.com/questions/27888243/the-data-types-text-and-varchar-are-incompatible-in-the-equal-to-operator-in-c-s)
SELECT * FROM groceries WHERE CONVERT(varchar, name) IN ('Bananas');

/*
The SQL BETWEEN Operator
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
*/
SELECT * FROM groceries;
SELECT * FROM groceries WHERE quantity BETWEEN 2 AND 4;

/*
SQL Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of the query.

Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;
Alias Table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;
*/
SELECT * FROM groceries;
SELECT * FROM groceries AS shop_list WHERE shop_list.quantity>1;

/*
SQL JOIN
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
Different Types of SQL JOINs
Here are the different types of the JOINs in SQL:

(INNER) JOIN: Returns records that have matching values in both tables.
LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table.
RIGHT (OUTER) JOIN: Return all records from the right table, and the matched records from the left table.
FULL (OUTER) JOIN: Return all records when there is a match in either left or right table.
*/

SELECT * FROM groceries;
-- Let's create an Orders Table
CREATE TABLE orders (Order_ID INTEGER PRIMARY KEY, id INTEGER, OrderDate DATE);
-- Now insert some data in the Orders Table
INSERT INTO orders VALUES (10, 1, '2018-05-27');
INSERT INTO orders VALUES (20, 2, '2018-05-28');
INSERT INTO orders VALUES (30, 3, '2018-05-29');
-- Show the Orders table
SELECT * FROM orders;

-- INNER JOIN: that selects records that have matching values in both tables:
SELECT * FROM groceries INNER JOIN orders ON orders.id=groceries.id;

/* LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table.
 
 LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name;
*/

SELECT * FROM orders LEFT JOIN groceries ON orders.id=groceries.id;
SELECT * FROM orders LEFT JOIN groceries
ON orders.id=groceries.id ORDER BY CONVERT(varchar,groceries.name);

/*
SQL RIGHT JOIN Keyword
The RIGHT JOIN keyword returns all records from the right table (table2), and the matched records from the left table (table1). The result is NULL from the left side, when there is no match.

RIGHT JOIN Syntax
SELECT column_name(s)
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;
*/
SELECT Order_ID, name,aisle, quantity FROM orders RIGHT JOIN groceries ON orders.id=groceries.id;
SELECT * FROM orders RIGHT JOIN groceries
ON orders.id=groceries.id ORDER BY CONVERT(varchar,groceries.name);

/*
SQL FULL OUTER JOIN Keyword
The FULL OUTER JOIN keyword return all records when there is a match in either left (table1) or right (table2) table records.

Note: FULL OUTER JOIN can potentially return very large result-sets!

FULL OUTER JOIN Syntax
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
*/

SELECT Order_ID, aisle,quantity FROM orders FULL OUTER JOIN groceries
ON orders.id=groceries.id;
SELECT Order_ID, name, aisle,quantity FROM orders FULL OUTER JOIN groceries
ON orders.id=groceries.id;

/*
Next time, I will continue the SQL operators like Union, Group By, Having, Exists, Any, All, Select Into, Insert Into Select and Null Functions
Reference: https://www.w3schools.com/sql/sql_union.asp
*/