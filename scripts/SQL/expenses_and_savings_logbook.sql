create database logbook;
use logbook;
drop table logbook.tbl_shop_grocery;
create table tbl_shop_grocery (id int, store_name varchar(30), store_loc varchar(30),
shop_date date, item_cost float, item_promo float, item_desc varchar(50));

# alter the table column
alter table tbl_shop_grocery change `item_cost` `item_orig_cost` float;
# add a column after a particular column
alter table tbl_shop_grocery add item_cost_paid float after item_promo;
# calculate column value based on other colunns
set sql_safe_updates=0; # this will disable the safe update option and will let you to create a column in an existing table
# rearrange the columns for better readability
alter table tbl_shop_grocery modify item_desc varchar(50) after store_loc;
alter table tbl_shop_grocery modify shop_date date after id;

# insert data in table
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

# update the calculated column with values derived from other columns
update logbook.tbl_shop_grocery set item_cost_paid=item_orig_cost-item_promo;

delete from tbl_shop_grocery where item_desc="Avacado (3pcs on sale)";
alter table tbl_shop_grocery drop id;
show columns from tbl_shop_grocery;
select * from tbl_shop_grocery;