use db_practise;

# create a new table
-- create table jobs(sno int(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
-- company_name varchar(30),
-- company_rating float(3),
-- job_loc varchar(30),
-- advert_postdate varchar(30),
-- job_title varchar(30)
-- )

SELECT * FROM jobs;
select jobtitle from jobs;
# select count(*) from jobs where jobtitle = "Data Scientist";
select distinct joblocation from jobs;
select distinct count(*) from jobs;
# determine how many rows in table
select count(*) from jobs;
show columns from jobs;
select distinct CompanyName from jobs;
select CompanyName, JobLocation, min(CompanyRating) from jobs;
select CompanyName, JobLocation, max(CompanyRating) from jobs;
select avg(CompanyRating) from jobs;
select CompanyName, count(*) from jobs;
select * from jobs where JobLocation = "Subang Jaya";
select * from jobs where JobLocation = "Petaling Jaya" and AdvertPostDate like "%1 day%";
select * from jobs where CompanyName like "N%";
select distinct(CompanyName) from jobs;
select * from jobs where CompanyName like "%Rob%";
select * from jobs where CompanyName like "%KLA%";
select * from jobs where AdvertPostDate like "%just%";
select * from jobs where AdvertPostDate like "%1%";
select * from jobs where AdvertPostDate like "%1%" and CompanyRating>=4;
select * from jobs where CompanyName like "%Career%";
select * from jobs where AdvertPostDate like "%1 day%" 
and AdvertPostDate not like "%11 day%"
and CompanyRating>=4;
