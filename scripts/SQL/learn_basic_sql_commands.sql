# Work done on : May 6th, 2020
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

# Work done on : May 7th, 2020
# show Anthony Shore statement
select last_statement from deathrow  WHERE first_name = 'Anthony' AND last_name = 'Shore';

# Examining possible inncoent people who have been executed
select count(last_statement) from deathrow where last_statement is null;
show columns from deathrow;
# Show distinct column value for categorical column. Same as levels() in release
select distinct (county) from deathrow;

# count the number of executions per county
## print column name
show columns from deathrow;
select distinct county,execution from deathrow;
# count the number of executions for a specified county.
SELECT COUNT(*) FROM deathrow WHERE county='Harris';

SELECT
    sum(CASE WHEN county='Harris' THEN 1
        ELSE 0 END),
    sum(CASE WHEN county='Bexar' THEN 1
        ELSE 0 END)
FROM deathrow;

# Find how many inmates were over the age of 50 at execution time.
show columns from deathrow;
select count(*) from deathrow where age_at_execution>50;

# Find the number of inmates who have declined to give a last statement.
select count(*) from deathrow where last_statement is null;

# Find the minimum, maximum and average age of inmates at the time of execution.
show columns from deathrow;
select min(age_at_execution) from deathrow; # 24
select max(age_at_execution) from deathrow; # 67
select avg(age_at_execution) from deathrow; # 39
select min(age_at_execution), max(age_at_execution), avg(age_at_execution) from deathrow; 

# Find the average length (based on character count) of last statements in the dataset.
# Hint: find a function which returns the number of characters in a string.
select avg(char_length(last_statement)) from deathrow; # 412.51
select avg(length(last_statement)) from deathrow; # 412.62

# List all the counties in the dataset without duplication.
# Hint use Distinct()
select distinct(county) from deathrow;

# A Strange Query
select first_name, count(*) from deathrow;

# Find the proportion of inmates with claims of innocence in their last statements.
# Hint: To do decimal division, ensure that one of the numbers is a decimal by multiplying it by 1.0. Use LIKE '%innocent%' to find claims of innocence.
select first_name from deathrow;
select first_name from deathrow where last_statement like '%innocent%';
SELECT
1.0 * COUNT(CASE WHEN last_statement LIKE '%innocent%'
    THEN 1 ELSE NULL END) / COUNT(*)
FROM deathrow; # 0.05