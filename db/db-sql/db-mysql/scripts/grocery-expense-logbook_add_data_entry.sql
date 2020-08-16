use logbook;
# drop table tbl_grocery;
# create table
create table tbl_grocery(
shopid int not null auto_increment,
shop_date date, store_name varchar(30) default "Aeon Big", store_loc varchar(30) default "Mid Valley", 
item_brand  varchar(30), item_desc varchar(30),
item_cost float default 0.0, item_weight float default 0.0,item_discount float default 0.0,
primary key(shopid));

desc logbook.tbl_grocery;

# Grocery Shopping data August 2020
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-8-8","local vegetable","red onions",2,1),
("2020-8-8","local vegetable","tomato",3.43,1),
("2020-8-8","local vegetable","potato",4.02,1),
("2020-8-8","local vegetable","pumpkin",1.46,1.4),
("2020-8-8","local vegetable","lettuce",4.40,3),
("2020-8-8","local vegetable","green chilli",3.10,0.5),
("2020-8-8","local vegetable","bitter gourd",2.35,2),
("2020-8-8","dry produce","fried tofu",1.16,1),
("2020-8-8","seeds","black beans",6.33,0.422),
("2020-8-8","dairy produce","rasaku coconut milk",13.49,6),
("2020-8-8","local vegetable","garlic",0.67,0.4),
("2020-8-8","local toffee","sweets",2.99,0.3),
("2020-8-8","local toffee","sweets",3.99,0.4);

# Grocery Shopping data July 2020
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-7-7","local vegetable","pak choy",3,1),
("2020-7-7","local vegetable","potato",6.53,1),
("2020-7-7","local vegetable","green chilli",2.50,0.3),
("2020-7-7","local vegetable","carrot",3,0.5),
("2020-7-7","dry produce","farmer fresh oats",9.35,1),
("2020-7-7","dairy produce","rasaku coconut milk",12.99,6),
("2020-7-7","laundry","Downy mystique softener",5.99,1),
("2020-7-7","local vegetable","japanese CF",2.50,0.3);

insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-7-16","local vegetable","pak choy",1.50,1),
("2020-7-16","local vegetable","potato",3.74,1),
("2020-7-16","local vegetable","red chilli",3.30,0.3),
("2020-7-16","local vegetable","old ginger",1.73,0.5),
("2020-7-16","local vegetable","red onion",2.30,1),
("2020-7-16","local vegetable","tomamto",8.99,1),
("2020-7-16","local vegetable","japanese swai",1.90,0.3),
("2020-7-16","dry produce","EVA Honey",9.99,0.5),
("2020-7-16","laundry","Protex bar soap (herbal) 75gm",6.50,1),
("2020-7-16","dry produce","red beans",5.84,0.5);

insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-7-29","local vegetable","pak choy",1.50,1),
("2020-7-29","local vegetable","potato",4.67,1),
("2020-7-29","local vegetable","red chilli",3.30,0.3),
("2020-7-29","local vegetable","old ginger",1.03,0.5),
("2020-7-29","local vegetable","cameron kai",3.90,0.5),
("2020-7-29","local vegetable","red onion",1.03,1),
("2020-7-29","local vegetable","tomamto",6.11,1),
("2020-7-29","local vegetable","japanese swai",1.90,0.3),
("2020-7-29","dry produce","TopValue Salt",0.45,0.5),
("2020-7-29","dry produce","yellow beans",7.04,0.5),
("2020-7-29","dry produce","red beans",6.48,0.5),
("2020-7-29","tea","Ali Tea Classic",9.65,1),
("2020-7-29","spices","Tom Yam Cubes",2.65,0.5),
("2020-7-29","oral hygine","Darlie Toothpaste",17.59,2),
("2020-7-29","local vegetable","garlic",1.55,0.3),
("2020-7-29","local toffee","sweets",5.35,0.6),
("2020-7-29","local toffee","sweets",3.47,0.4);
select * from tbl_grocery where shop_date = "2020-7-29";

# Grocery Shopping data June 2020
use logbook;
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values 
("2020-6-16","local vegetable","potato",7.16,1),
("2020-6-16","local vegetable","green chilli",2.50,0.3),
("2020-6-16","local vegetable","carrot",3,0.5),
("2020-6-16","local vegetable","french bean",3.90,0.25),
("2020-6-16","local vegetable","red onion",2.50,1),
("2020-6-16","local vegetable","tomamto",5.27,1),
("2020-6-16","dry produce","black beans",4.90,0.5),
("2020-6-16","dry produce","yellow beans",6.98,0.5),
("2020-6-16","dry produce","santan coconut powder",1.3,0.100),
("2020-6-16","spices","mustard seeds",2.65,0.5),
("2020-6-16","spices","black pepper",4.67,0.25);
select * from tbl_grocery where shop_date = "2020-6-16";

use logbook;
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-6-28","local vegetable","pak choy",1.50,1),
("2020-6-28","local vegetable","potato",6.23,1),
("2020-6-28","local vegetable","red chilli",3.30,0.3),
("2020-6-28","local vegetable","garlic",1.37,0.5),
("2020-6-28","local vegetable","red onion",1.05,1),
("2020-6-28","local vegetable","tomamto",5.41,1),
("2020-6-28","dry produce","black chickpea (chana)",6.40,0.5),
("2020-6-28","local toffee","sweets",3.11,0.6),
("2020-6-28","local toffee","sweets",3.53,0.4),
("2020-6-28","local toffee","mars chocolate",3.06,0.6),
("2020-6-28","dairy produce","rasaku coconut milk",12.99,6);
select * from tbl_grocery where shop_date = "2020-6-28";
# rename the column value in item_desc as spelling is wrong
select * from logbook.tbl_grocery where item_desc="tomamto";
update logbook.tbl_grocery set item_desc = "tomato" where item_desc = "tomamto";
# check revised value
select * from logbook.tbl_grocery where item_desc="tomato";

# Grocery Shopping data May 2020
use logbook;
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-5-07","local vegetable","pak choy",1.50,1),
("2020-5-07","local vegetable","potato",10.90,1),
("2020-5-07","local vegetable","green chilli",3,0.100),
("2020-5-07","local vegetable","brinjal",2.80,0.5),
("2020-5-07","local vegetable","carrots",2.30,0.5),
("2020-5-07","local vegetable","red onion",4.20,0.8),
("2020-5-07","local vegetable","tomamto",5.30,5),
("2020-5-07","dry produce","black chickpea (chana)",6.80,0.3),
("2020-5-07","fruit","apple",9.90,8),
("2020-5-07","laundry","johnsons baby soap",7.28,0.4),
("2020-5-07","hair care","extra virgin coconut oil",8.50,0.6),
("2020-5-07","dairy produce","eggs (15pcs)",8.50,15);

insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values 
("2020-5-28","local vegetable","potato",3.16,1),
("2020-5-28","local vegetable","green chilli",3,0.100),
("2020-5-28","local vegetable","bitter gourd",3.27,2),
("2020-5-28","local vegetable","Yam (keladi)",7.45,2),
("2020-5-28","local vegetable","red onion",5.20,0.8),
("2020-5-28","local vegetable","tomamto",3.30,5),
("2020-5-28","local vegetable","cabbage",7.30,1),
("2020-5-28","dairy produce","rasaku coconut milk",10.40,6),
("2020-5-28","spices","salt",0.50,.500),
("2020-5-28","laundry","Attack washing powder",17.67,1.6),
("2020-5-28","hair care","extra virgin coconut oil",8.50,0.6),
("2020-5-28","dairy produce","eggs (15pcs)",8.50,15),
("2020-5-28","dry produce","captain cook (green pack) oats",9.88,.800),
("2020-5-28","cooking oil","Basso Peanut Oil (1ltr)",20.50,1),
("2020-5-28","spices","Knorr chicken cubes",3.26,1);

# replace the column value in store_name, store_loc
select * from logbook.tbl_grocery;
update logbook.tbl_grocery set store_name = "Village Grocer" where shop_date = '2020-05-07';
update logbook.tbl_grocery set store_name = "Village Grocer" where shop_date = '2020-05-28'; 
# check revised value
select * from logbook.tbl_grocery where shop_date = "2020-05-07" or shop_date = "2020-05-28";
