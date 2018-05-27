create database april2018;
use april2018;

create table foodTbl (itemID int, itemName varchar(30), itemQty int);
insert into foodTbl values(100, 'Salad', 21);

select * from foodTbl;

/* add primary key to table that is already created */
alter table foodTbl 
add primary key (itemID);
/* On executing the above query, the error, "Cannot define PRIMARY KEY constraint on nullable column in table" is generated.
The reason for this error is.
A primary key cannot be applied on a column with a null constraint (nullable). When a table is created, by default every column is nullable.

So first off all we have to remove the null constraint and apply a NOT NULL constraint on the column. To do this execute the following query;

ALTER TABLE tbl_name alter column column_name int NOT NULL

After that you can apply a primary key on that same column. To do this execute the following query

ALTER TABLE tbl_name ADD PRIMARY KEY (column_name)
*/

alter table foodTbl alter column itemID int not null;
alter table foodTbl add primary key (itemID);

/* Look at the table structure */
sp_help foodTbl;



