create database myfirstdb;

/* Create table with primary key*/
create table customer(
custid varchar(6) primary key not null,
firstname varchar(30),
lastname varchar(30)
)

/*create another table with no primary key*/
CREATE TABLE client 
(
client_ID varchar (6)  NOT NULL, 
First_Name varchar(30), 
Last_Name varchar(30)
)
/* show the table structure */
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='client';

alter table client
add primary key (client_ID)

/* show the primary key */
select * from sys.objects
where type='PK'
and parent_object_id =OBJECT_ID('customer')

/*show all the tables in the database */
select * from INFORMATION_SCHEMA.TABLES;

/* drop multiple tables */
drop table person, customer;

/* create foreign key */
alter table client
add Customer_ID varchar (6) references client (client_ID);

/* show the foreign key */
exec sp_fkeys client;
