# show databases;
# create database hello_world;
use db_practise;
create table cats(
catName varchar(50)
);
show tables;
show columns from cats;
alter table cats add column age int;

create table pastries(
pastry_name varchar(20),
pastry_qty int
);
show columns from pastries;
drop table pastries;

# insert data ito a table
show columns from cats;
insert into cats (catName, age) values ("blue", 10);
insert into cats (catName, age) values ("red", 20);
select catName from cats where age <11;
insert into cats (catName, age) values ('orange',3), ('yellow',9),('pink',11);

create table people (first_name varchar(50), lastName varchar(50), age int(15));
show columns from people;
INSERT INTO people(first_name, lastName, age)
VALUES ('Tina', 'Belcher', 13);
INSERT INTO people(age, lastName, first_name)
VALUES (42, 'Belcher', 'Bob');
INSERT INTO people(first_name, lastName, age)
VALUES('Linda', 'Belcher', 45)
  ,('Phillip', 'Frond', 38)
  ,('Calvin', 'Fischoeder', 70);
show columns from people;
show warnings;
desc people;
CREATE TABLE cats2
  (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
  );
  desc cats2;
  INSERT INTO cats2(name) VALUES('Texas');
  SELECT * FROM cats2; 
  CREATE TABLE cats3
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
  desc cats3;
  insert into cats3(age) values (10);
  insert into cats3() values();
  show columns from cats3;
  select * from cats3;
  
  CREATE TABLE unique_cats
  (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  );
  
iNSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23),(2, 'Louise', 3),(3, 'James', 3);
select * from unique_cats;

create table employees (id int auto_increment not null,
last_name varchar(20) not null,
first_name varchar(20) not null,
middle_name varchar(20) default "none",
age int not null,
current_status varchar(20) default "employed",
primary key (id) );
show warnings;
drop table employees;
INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);
select * from employees;
drop table cats;
# create a new cat table
CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  desc cats;
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
