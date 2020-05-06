
# attach the database
use db_practise;

# show datatype for all columns in table
show fields from deathrow;

# change column name for one column in a table
# alter table deathrow change column `Execution` `execution` int;

# change multiple columns names in a table
alter table deathrow 
change column `Execution` `execution` int,
change column `Date of Birth` `birth_date` text,
change column `Date of Offence` `date_offence` text, 
change `Highest Education Level` `high_edu_level` text,
change column `Last nullme` `last_name` text, 
change `First nullme` `first_name` text,
change `TDCJ
Number` `tdcjnum` int,
change `Age at Execution` `age_at_execution` int,
change `Date Received` `date_recvd` text,
change `Execution Date` `date_executd` text,
change `Race` `race` text,
change `County` `county` text,
change `Eye Color` `eye_color` text,
change `Weight` `weight` int,
change `Height` `height` double,
change `nulltive County` `county1` text,
change `nulltive State` `state` text,
change `Last Statement` `last_statement` text;

# delete table
# drop table db_practise.deathrow
# basic sql queries
select birth_date, high_edu_level,first_name from deathrow where high_edu_level>9;
select * from deathrow limit 3;
select first_name, last_name from deathrow limit 3;

# Find the first and last names and ages (ex_age) of inmates 25 or younger at time of execution.
select first_name, last_name, age_at_execution 
from deathrow 
where age_at_execution<25;

select first_name, last_name from deathrow;
# applying the LIKE operator
select first_name, last_name
from deathrow
where first_name like '%an%' and last_name like '%ia';