-- Sakila is a MySql database
-- The following sql script is written for MYSql database

use sakila;
show tables;

# show table structure
desc actor;

-- show keys 
show keys from actor;

-- select actor names starting with vowels like a,e,i,o,uninstall
desc actor;

-- select all first names from actors where the second character begins with a
select first_name from actor where first_name like "__a%";

-- Select all records where the first letter of the first_name in Actor is an "a" or a "b" or a "c".
select * from actor where first_name like "[abc]%";

-- Select all records where the first_name of an actor starts with "a" and ends with "a"
select first_name from actor where first_name like "a%a";

-- Select all records where the first_name of an actor starts with "a" and ends with "c"
select first_name from actor where first_name like "a%c";

-- Select all records where the first_name of an actor starts with "f" and ends with "y"
select distinct first_name from actor where first_name like "f%y";