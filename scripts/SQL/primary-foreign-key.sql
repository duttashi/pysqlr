/*
Data definition language (DDL) refers to the set of SQL commands that can create and manipulate the structures of a database. 
DDL statements are used to create, change, and remove objects including indexes, triggers, tables, and views. 
Common DDL statements include:
  CREATE (generates a new table)
  ALTER (alters table)
  DROP (removes a table from the database)
*/

/*Show all tables created in this database */
select * from INFORMATION_SCHEMA.TABLES;
/* Look at the table structure*/
/* Method# 1: use INFORMATION_SCHEMA.COLUMNS in SELECT statement */
select * from INFORMATION_SCHEMA.COLUMNS; 
/* Method# 2: use sp_help statement */
sp_help foodTbl;

/* TO START USING A DATABASE, SQL IS, `USE DATABASENAME`
   TO STOP USING A DATABASE, SIMPLY CHANGE THE DATABASE CONTEXT TO SOME OTHER DATABASE LIKE `USE MASTER`
*/
use master; 

/* Delete any existing database in the object explorer */
drop database myfirstdatabase;

/* Create a new empty database */
create database myfirstdatabase;
/* Start using the database*/
use myfirstdatabase;

/* Create a Table */
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);

/* Create another table and reference the Persons table in this table */
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons (PersonID)
);
/*Error in creating the table Orders: There are no primary or candidate keys in the referenced table 'Persons' that match the 
referencing column list in the foreign key 'FK__Orders__PersonID__24927208'. 
Why do you think the error is there?
Ans- because Persons table does not have a primary key defined. Solve this error by altering the Persons table
Let's alter the table to create a primary key on the personid column 
*/

alter table persons add primary key (personid);
/* Error: Cannot define PRIMARY KEY constraint on nullable column in table 'persons'
Why do you think the error is there?
Ans- because the column personid is defined as null column. Check this visually by clicking <database> then right click on <tablename> and choose design
Solution: alter the column `personid`such that its not null and then add the primary key on it 
*/
alter table persons alter column personid int not null;
/*Look at the table structure. Notice, the column `IS_NULLABLE` for personid is NO */
select * from INFORMATION_SCHEMA.COLUMNS; 

/* Now alter the table to create a primary key on the personid column */
alter table persons add primary key (personid);

/* Create another table and reference the Persons table in this table */

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    personid int FOREIGN KEY REFERENCES persons (personid)
);

/* Now look at the two tables (Orders tbl and Persons tbl) in Design view. 
Q. Do you see the primary key's (PK) in both tables (Yes/No)?
Q. How can you say its a PK? (hint: see the key picture besides the column name)
Q. Is PK null in persons table? (Yes)
Q. Is PK now a Foreign Key (FK) null in Orders table? (Yes)
Q. CAN FK BE NULL? If yes, then Why? Explain.
	Answer: Yes, it can be NULL. First remember a Foreign key simply requires that the value in that field 
  must exist first in a different table (the parent table). That is all an FK is by definition. 
  Null by definition is not a value. Null means that we do not yet know what the value is.
*/

/* Drop a primary key constraint */
/* Click, Database'>tables>your table name>keys>copy the constraints like 'PK__TableName__30242045'*/
alter table persons drop constraint PK__Persons__AA2FFB85985F35CA;
/* Error: The constraint 'PK__Persons__AA2FFB85985F35CA' is being referenced by table 'Orders', foreign key constraint 'FK__Orders__personid__2B3F6F97'.

Solution: First drop the foreign key and then drop the primary key*/
alter table orders drop constraint FK__Orders__personid__2B3F6F97;
alter table persons drop constraint PK__Persons__AA2FFB85985F35CA;

/* Look at the Keys in table Person and Order. Do you see the PK and the FK ? */
