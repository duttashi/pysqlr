use logbook;
# drop table tbl_grocery;

# create table grocery
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
update logbook.tbl_grocery set store_loc = "KL Gateway Universiti" where shop_date = '2020-05-07';
update logbook.tbl_grocery set store_loc = "KL Gateway Universiti" where shop_date = '2020-05-28';  
# check revised value
select * from logbook.tbl_grocery where shop_date = "2020-05-07" or shop_date = "2020-05-28";

# Grocery Shopping data April 2020
use logbook;
insert into tbl_grocery (shop_date, store_name, store_loc,item_brand, item_desc,item_cost,item_weight)
values ("2020-4-05","Village Grocer","KL Gateway Universiti","local vegetable","french bean",3.92,1),
("2020-4-05","Village Grocer","KL Gateway Universiti","local vegetable","potato",4.50,1),
("2020-4-05","Village Grocer","KL Gateway Universiti","local vegetable","green chilli",2.90,0.100),
("2020-4-05","Village Grocer","KL Gateway Universiti","local vegetable","garlic",8.90,0.800),
("2020-4-05","Village Grocer","KL Gateway Universiti","local vegetable","tomato",4.95,0.5),
("2020-4-05","Village Grocer","KL Gateway Universiti","dry produce","black beans",6.80,0.3),
("2020-4-05","Village Grocer","KL Gateway Universiti","dry produce","chickpea",3.60,0.3),
("2020-4-05","Village Grocer","KL Gateway Universiti","dry produce","green moong dal",3.60,0.3),
("2020-4-05","Village Grocer","KL Gateway Universiti","butter","Daisy crunchy peanut butter",11.60,1),
("2020-4-05","Village Grocer","KL Gateway Universiti","fruit","apple",9.90,8),
("2020-4-05","Village Grocer","KL Gateway Universiti","laundry","johnsons baby soap",7.20,0.4),
("2020-4-05","Village Grocer","KL Gateway Universiti","dry produce","evergreen coconut powder",1.30,0.50),
("2020-4-05","Village Grocer","KL Gateway Universiti","coffee","Super 3in1",12.50,1);
select * from tbl_grocery where store_name like "Village%";
select * from tbl_grocery where item_desc like "%peanut%";

# Grocery Shopping data March 2020
use logbook;
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values 
("2020-3-14","local vegetable","green chilli",2.29,.100),
("2020-3-14","local vegetable","green leaf",3.70,0.5),
("2020-3-14","local vegetable","red onion",5.90,1),
("2020-3-14","local vegetable","tomamto",2.89,5),
("2020-3-14","spices","salt",0.80,.500),
("2020-3-14","dry produce","Red beans",4.90,0.5),
("2020-3-14","dry produce","Yellow beans",5.30,0.5),
("2020-3-14","coffee","Nutrigold 3in1",7.99,1);

insert into tbl_grocery (shop_date, store_name, store_loc, item_brand, item_desc,item_cost,item_weight)
values
("2020-3-20","Village Grocer","KL Gateway Universiti","dry produce","chickpea",3.60,0.3), 
("2020-3-20","Village Grocer","KL Gateway Universiti","local vegetable","tomamto",6.03,5),
("2020-3-20","Village Grocer","KL Gateway Universiti","local vegetable","potato",4.50,5),
("2020-3-20","Village Grocer","KL Gateway Universiti","spices","baba turmeric",4.90,.500),
("2020-3-20","Village Grocer","KL Gateway Universiti","dry produce","captain cook (green pack) oats",9.88,.800),
("2020-3-20","Village Grocer","KL Gateway Universiti","dry produce","Red beans",4.56,0.5),
("2020-3-20","Village Grocer","KL Gateway Universiti","dry produce","chickpea",3.60,0.3),
("2020-3-20","Village Grocer","KL Gateway Universiti","dry produce","Yellow beans",5.30,0.5),
("2020-3-20","Village Grocer","KL Gateway Universiti","dairy produce","dutch lady full-cream milk",9.25,1),
("2020-3-20","Village Grocer","KL Gateway Universiti","dry produce","Prego spiral macroni",3.29,0.300);
select * from tbl_grocery;
# rename the column from item_brand to item_type
alter table logbook.tbl_grocery rename column item_brand to item_type; 
select * from tbl_grocery where item_type like "%tea";

# Grocery Shopping data February 2020
use logbook;
desc logbook.tbl_grocery;
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost,item_weight,item_discount)
values
("2020-2-01","dry produce","captain cook (green pack) oats",9.88,.800,2.20), 
("2020-2-01","local vegetable","garlic",1.01,.100,0),
("2020-2-01","local vegetable","green chilli",0.72,0.3,0),
("2020-2-01","local vegetable","red onion",5.20,1,0),
("2020-2-01","local vegetable","tomamto",4.70,5,0),
("2020-2-01","local vegetable","cabbage",2.43,1,0),
("2020-2-01","local vegetable","potato",5.60,1,0),
("2020-2-01","fruit","avacado (on sale)",5,3,0),
("2020-2-01","coffee","Nescaffe Latte Mocha",12.50,1,1.62),
("2020-2-01","butter","Daisy crunchy peanut butter",10.90,1,0);

insert into tbl_grocery (shop_date, item_type, item_desc,item_cost,item_weight)
values
("2020-2-09","local vegetable","tomamto",4.12,5),
("2020-2-09","local vegetable","cabbage",2.64,1),
("2020-2-09","local vegetable","potato",3.22,1),
("2020-2-09","coffee","Nutrigold Coffee (25 sticks)",7.99,1),
("2020-2-09","dry produce","Sakura Super Rice",4.70,1),
("2020-5-09","spices","Knorr chicken cubes",4.89,1),
("2020-7-09","laundry","Protex bar soap",9.35,1);

insert into tbl_grocery (shop_date, store_name,store_loc, item_type, item_desc,item_cost,item_weight)
values
("2020-2-10","D.I.Y.","Jaya One","laundry","Sponge dishwasher",0.92,1),
("2020-2-10","D.I.Y.","Jaya One","laundry","Tiger brand mothballs",0.94,1);

insert into tbl_grocery (shop_date, item_type, item_desc,item_cost,item_weight)
values
("2020-2-15","local vegetable","tomamto",4.38,5),
("2020-2-15","local vegetable","green chilli",2.50,0.3),
("2020-2-15","local vegetable","potato",4.06,1),
("2020-2-15","local vegetable","red onion",4.50,1),
("2020-2-15","dry produce","tofu",1.68,1),
("2020-2-15","chocolate","Delicia DeCoco drink",14,1),
("2020-2-15","seeds","black beans",6.33,0.422),
("2020-2-15","seeds","green beans (moong)",6.17,0.514),
("2020-2-15","seeds","red beans (rajma)",5.95,.5),
("2020-2-15","seeds","chickpea (cholle)",6.85,0.422);

insert into tbl_grocery (shop_date, item_type, item_desc,item_cost,item_weight)
values
("2020-2-22","local vegetable","tomamto",5.51,5),
("2020-2-22","local vegetable","garlic",4.06,1),
("2020-2-22","local vegetable","red onion",2.17,1),
("2020-2-22","local vegetable","green beans",4.70,1),
("2020-2-22","dry produce","tofu (tradisional)",2.41,1),
("2020-2-22","cooking oil","Naturel Sunflower Oil",10.93,1),
("2020-2-22","dry produce","captain cook (green pack) oats",6.99,.800),
("2020-2-22","coffee","AliCafe white coffee",12.99,1);

insert into tbl_grocery (shop_date, item_type, item_desc,item_cost,item_weight)
values
("2020-2-29","local vegetable","tomamto",5.14,5),
("2020-2-29","local vegetable","garlic",2.49,1),
("2020-2-29","local vegetable","red onion",5.20,1),
("2020-2-29","local vegetable","green beans",4.70,1),
("2020-2-29","local vegetable","Carrots (Australia)",2.75,.500),
("2020-2-29","local vegetable","green shimla mirch",2.70,1),
("2020-2-29","local vegetable","bitter gourd",3.02,2),
("2020-2-29","spices","coconut powder (plusmore)",2.18,1),
("2020-2-29","dry produce","tofu (tradisional)",2.21,1),
("2020-2-29","butter","Daisy crunchy peanut butter",11.60,1),
("2020-2-29","fruit","Banana (6 pcs)",8.39,6);

# Grocery Shopping data January 2020
use logbook;
insert into tbl_grocery (shop_date, item_type, item_desc,item_cost,item_weight)
values
("2020-1-11","dry produce","captain cook (green pack) oats",10,.800),
("2020-1-11","laundry","Downy rose-scent softener",5.98,1),
("2020-1-11","snacks","Mammee Monster Perisa",3.30,1);

insert into tbl_grocery (shop_date, store_name, store_loc, item_type, item_desc,item_cost,item_weight)
values
("2020-1-20","Village Grocer","KL Gateway Universiti","dry produce","captain cook (green pack) oats",10,.800),
("2020-1-20","Village Grocer","KL Gateway Universiti","chocolate","Cadbury Caramello Roll",2.90,1),
("2020-1-20","Village Grocer","KL Gateway Universiti","fruit","cavendish Banana (6pcs)",5.91,6),
("2020-1-20","Village Grocer","KL Gateway Universiti","fruit","Dolce cut pineapple",4.10,1),
("2020-1-20","Village Grocer","KL Gateway Universiti","fruit","USA Apple",12.90,6);







