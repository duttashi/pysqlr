create database logbook;
use logbook;
drop table logbook.tbl_shop_grocery;
create table tbl_shop_grocery (id int, store_name varchar(30), store_loc varchar(30),
shop_date date, item_cost float, item_promo float, item_desc varchar(50));

# alter the table column
alter table tbl_shop_grocery change `item_cost` `item_orig_cost` float;

# add a column after a particular column
alter table tbl_shop_grocery add item_cost_paid float after item_promo;
alter table tbl_shop_grocery add item_qty_weight float after item_desc;

# change column data type
alter table tbl_shop_grocery modify item_brand varchar(30);
# calculate column value based on other colunns
set sql_safe_updates=0; # this will disable the safe update option and will let you to create a column in an existing table
# rearrange the columns for better readability
alter table tbl_shop_grocery modify item_desc varchar(50) after store_loc;
alter table tbl_shop_grocery modify shop_date date after id;

# insert data in table
use logbook;
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (1,"Aeon Big","Mid Valley, KL","2020-01-11","10","0","Captain Cook Oats 800gm");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (2,"Aeon Big","Mid Valley, KL","2020-01-11","5.98","0","Downy (rose scented) softener");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (3,"Aeon Big","Mid Valley, KL","2020-01-11","3.30","0","Mammee Monster XL pack");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (4,"Village Grocer","KL Gateway Universiti","2020-01-20","9.50","0","Captain Cook Oats-green pack 800gm");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (5,"Village Grocer","KL Gateway Universiti","2020-01-20","2.90","0","Cadbury Caramello Roll");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (6,"Village Grocer","KL Gateway Universiti","2020-01-20","5.91","0","Cavendish Banana-6pcs");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (7,"Village Grocer","KL Gateway Universiti","2020-01-20","4.10","0","Dolce Pineapple Cut");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (8,"Village Grocer","KL Gateway Universiti","2020-01-20","12.90","0","USA Delicious Apple");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (9,"Aeon Big","Mid Valley, KL","2020-02-01","7.50","2.20","Captain Cook Oats-green pack 800gm");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, item_cost, item_promo, item_desc)
values (10,"Aeon Big","Mid Valley, KL","2020-02-01","5.20","0","Red Onion");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (11,"Aeon Big","Mid Valley, KL","2020-02-01","12.50","1.62","Nescaffe latte mocha coffee");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (12,"Aeon Big","Mid Valley, KL","2020-02-01","10.90","0","Daisy crunchy peanut butter");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (13,"Aeon Big","Mid Valley, KL","2020-02-01","4.70","0","Tomato");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (14,"Aeon Big","Mid Valley, KL","2020-02-01","1.01","0","Garlic");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (15,"Aeon Big","Mid Valley, KL","2020-02-01","2.43","0","Cabbage");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (13,"Aeon Big","Mid Valley, KL","2020-02-01","5.60","0","Potato");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (14,"Aeon Big","Mid Valley, KL","2020-02-01","5","0","Avacado (3pcs on sale)");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (15,"Aeon Big","Mid Valley, KL","2020-02-01","0.72","0","Green chilli");
insert into tbl_shop_grocery (id, store_name, store_loc, shop_date, 
item_orig_cost, item_promo, item_desc)
values (16,"Aeon Big","Mid Valley, KL","2020-02-01","0.40","0","Plastic bags (2pcs)");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-01","Aeon Big","Mid Valley, KL","Avacado (3pcs on sale)","5","0");

### Shopping records for Feb 9th 2020
use logbook;
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Apple (8pcs)","15.90","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Potato (3pcs)","3.22","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Nutrigold coffee (25 sticks)","7.99","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Sakura super rice (1kg)","4.70","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Protex soap bar","9.35","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Tomato","4.12","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Cabbage","2.64","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-09","Aeon Big","Mid Valley, KL","Knorr chicken cube","4.89","0");

### Shopping records for Feb 15th 2020
use logbook;
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Delicia Decoco","14","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Potato","4.06","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Tomato","4.38","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Green chilli","2.50","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Red onion(1kg)","4.50","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Cholle(0.486gm)","6.85","0");
insert into tbl_shop_grocery (shop_date, store_name, store_loc,  
item_desc, item_orig_cost, item_promo)
values ("2020-02-15","Aeon Big","Mid Valley, KL","Black Peas(0.422gm)","6.33","0");
# update the calculated column with values derived from other columns
update logbook.tbl_shop_grocery set item_cost_paid=item_orig_cost-item_promo;

delete from tbl_shop_grocery where item_desc="Avacado (3pcs on sale)";
alter table tbl_shop_grocery drop id;
show columns from tbl_shop_grocery;
select * from tbl_shop_grocery;

# Modified columns item description and item brand to contain only atomic values
show columns from tbl_shop_grocery;
select * from tbl_shop_grocery;
update tbl_shop_grocery set store_loc='Mid Valley' where store_loc='Mid Valley, KL';
select item_desc from tbl_shop_grocery where item_desc like "Captain%";
update tbl_shop_grocery set item_desc='Captain Cook Oats' where item_desc like 'Captain%';
select item_desc from tbl_shop_grocery;
update tbl_shop_grocery set item_desc='black peas' where item_desc like '%peas%';
update tbl_shop_grocery set item_desc='mammee monster' where item_desc like '%mammee%';
update tbl_shop_grocery set item_desc='banana' where item_desc like '%Banana%';
update tbl_shop_grocery set item_desc='Captain Cook Oats' where item_desc like 'Captain%';

update tbl_shop_grocery set item_brand='Captain Cook' where item_desc like 'Captain%';
update tbl_shop_grocery set item_desc='Oats' where item_desc like 'Captain%';
select * from tbl_shop_grocery;
update tbl_shop_grocery set item_brand='Downy' where item_desc like 'Downy%';
update tbl_shop_grocery set item_desc='Softener' where item_desc like 'Downy%';
select * from tbl_shop_grocery;
# set column value based on another column value
update tbl_shop_grocery set item_brand='Mammee Monster' where item_desc like 'mammee%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='dry spicy noodle' where item_desc like 'mammee%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Cadbury' where item_desc like 'Cadbury%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Dolce' where item_desc like 'Dolce%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='pineapple' where item_desc like 'Dolce%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Dolce Cavendish' where item_desc like 'bana%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='Softener' where item_desc like 'Downy%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='USA' where item_desc like 'USA%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='apples' where item_desc like 'USA%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='vegetable' where item_desc like 'local%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='local onions' where item_desc like 'Red%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Nescaffe' where item_desc like '%latte%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='Latte Mocha Coffee' where item_desc like '%latte%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Daisy' where item_desc like 'Daisy%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='crunchy peanut butter' where item_desc like 'Daisy%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='local vegetable' where item_desc like '%omat%' 
or item_desc like '%otat%' or item_desc like '%arli%' or item_desc like '%abbag%' 
or item_desc like '%chil%' or item_desc like '%onio%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='Softener' where item_desc like 'Downy%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='fruit' where item_desc like 'App%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='local fruit' where item_desc like 'App%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Nutrigold' where item_desc like 'Nutri%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='3-in-1 coffee' where item_desc like 'Nutri%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Sakura Super' where item_desc like 'Saku%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='rice' where item_desc like 'Saku%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Protex' where item_desc like '%soap%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='bathing soap' where item_desc like '%soap%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Knorr' where item_desc like 'Knorr%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='chicken cubes' where item_desc like 'Knorr%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Delica' where item_desc like 'Delicia%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='chocolate drink' where item_desc like 'Delicia%';
# show table data
select * from tbl_shop_grocery;

# set column value based on another column value
update tbl_shop_grocery set item_brand='Aeon' where item_desc like 'Choll%' or item_desc like 'black%';
# replace the column value based on pattern
update tbl_shop_grocery set item_desc='pulses-cholle' where item_desc like 'Choll%' ;
update tbl_shop_grocery set item_desc='pulses-black peas' where item_desc like 'black%' ;
# show table data
select * from tbl_shop_grocery;
select * from tbl_shop_grocery where item_desc="apples";
update tbl_shop_grocery set item_desc='apples' 
where item_desc like 'local%'  and item_brand like 'fruit';
update tbl_shop_grocery set item_brand='USA' 
where item_brand like 'frui%'  and item_desc like 'app%';
select * from tbl_shop_grocery;

# split the date into day,month, year format
select year(shop_date) as shop_year from tbl_shop_grocery;

### Work done on 28/May/2020
use logbook;
# disable the safe update option before making any changes to the table
SET SQL_SAFE_UPDATES = 0;
show columns from tbl_shop_grocery;
select * from tbl_shop_grocery;

# change date datatype
alter table tbl_shop_grocery modify shop_date date;
# split shop_date into 3 separate columns
update tbl_shop_grocery set shop_date = year('shop_year');
# , shop_date = date_format(`shop_month`,'%m'), shop_date= date_format(`shop_day`,'%d');
SELECT DATE_FORMAT(now(),'%Y %m %d');
SHOW VARIABLES LIKE "%version%";
show tables;
# To split the date column into 3 separate columns.
## First, add 3 separate columns to the table. Then update them with the existing date column
# alter  table tbl_shop_grocery drop column shop_month;

alter table tbl_shop_grocery add column shop_year int after shop_date;
update tbl_shop_grocery set shop_year = year(shop_date);
alter table tbl_shop_grocery add column shop_month int after shop_year;
update tbl_shop_grocery set shop_month = month(shop_date);
alter table tbl_shop_grocery add column shop_day int after shop_month;
update tbl_shop_grocery set shop_day = month(shop_date);
# show all columns in table
show columns from tbl_shop_grocery;
select * from tbl_shop_grocery;
# Now drop the shop_date column
alter  table tbl_shop_grocery drop column shop_date;
alter table tbl_shop_grocery add column `shop_id` int unsigned primary key auto_increment;
# change column position
alter table tbl_shop_grocery modify shop_id int after shop_year;
alter table tbl_shop_grocery modify shop_year int after shop_id;
alter table tbl_shop_grocery auto_increment=100;

### Work done on 30/May/2020
# Objective: To create separate tables from tbl_shop_grocery table
use logbook;
# show tables in database
show tables;
# disable the safe update option before making any changes to the table
SET SQL_SAFE_UPDATES = 0;
show columns from tbl_shop_grocery;
# look at the table structure statement
show create table tbl_shop_grocery;
# create a new table from the existig table
create table if not exists tbl_store_info (primary key(store_id)) 
select shop_id as store_id, store_name, store_loc
from tbl_shop_grocery;
# show columns in new table
show columns from tbl_store_info;

# create a new table from the existig table
create table if not exists tbl_product_info 
select shop_id as prod_id, item_brand, item_desc, item_qty_weight, item_orig_cost as item_cost, item_promo
from tbl_shop_grocery;
# show columns in new table
show columns from tbl_product_info;
# drop table tbl_product_info;

# create a new table from the existig table
# drop table tbl_shopping_info;
create table if not exists tbl_shopping_info  
select shop_id, shop_year, shop_month, shop_day, item_cost_paid
from tbl_shop_grocery;
# show columns in new table
show columns from tbl_shopping_info;
# show all tables in database
show tables;

# Populate new tables from existing table `tbl_shop_grocery`
# show columns for the existing table tbl_shop_grocery
show columns from tbl_shop_grocery;
insert into tbl_shopping_info
select shop_id, shop_year, shop_month, shop_day, item_cost_paid
from tbl_shop_grocery;
# show table data 
select * from tbl_shopping_info;
# show column data types
describe tbl_shopping_info;
set sql_safe_updates=0; # this will disable the safe update option and will let you to create a column in an existing table
# add a new column to shoppig info table
alter table tbl_shopping_info add column shopping_date date;