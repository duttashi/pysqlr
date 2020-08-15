use logbook;
drop table tbl_grocery;
# create table
create table tbl_grocery(
shopid int not null auto_increment,
shop_date date, store_name varchar(30) default "Aeon Big", store_loc varchar(30) default "Mid Valley", 
item_brand  varchar(30), item_desc varchar(30),
item_cost float default 0.0, item_weight float default 0.0,item_discount float default 0.0,
primary key(shopid));

desc logbook.tbl_grocery;
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
select * from tbl_grocery;
insert into tbl_grocery (shop_date, item_brand, item_desc,item_cost,item_weight)
values ("2020-7-7","local vegetable","pak choy",3,1),
("2020-7-7","local vegetable","potato",6.53,1),
("2020-7-7","local vegetable","green chilli",2.50,0.3),
("2020-7-7","local vegetable","carrot",3,0.5),
("2020-7-7","dry produce","farmer fresh oats",9.35,1),
("2020-7-7","dairy produce","rasaku coconut milk",12.99,6),
("2020-7-7","laundry","Downy mystique softener",5.99,1),
("2020-7-7","local vegetable","japanese CF",2.50,0.3);
select * from tbl_grocery;

