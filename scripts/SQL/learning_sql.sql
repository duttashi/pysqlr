/* Delete any existing database in the object explorer */
drop database myfirstDatabase;
drop database abcd;
drop database testDB;

/* Create a new empty database */
create database myfirstdatabase;
use myfirstdatabase;

/*Create a table*/
create table Person(
PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
	);

/*Delete or Drop a table */
drop table Person;

/*Create table Person again*/
create table Person(
PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
	);

/* Alter a table- Add column */
alter table Person add Poskod varchar(10);

/* View the table structure */

/*Method # 1: using the INFORMATION_SCHEMA.COLUMNS */
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='Person';
/*Method # 2: using the sp_columns */
sp_columns 'Person';


/* Alter a table- Drop column */
alter table Person drop column Poskod;
sp_columns 'Person';

/* Alter a table- Modify column */
alter table Person alter column Poskod char(10);
sp_columns 'Person';
