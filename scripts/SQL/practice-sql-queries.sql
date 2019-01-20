select albumid, title from
albums order by title limit 10;

/* find the count of customers*/
select customerid, count(*) as orders from invoices group by customerid having count(*)>=2;

-- exercises reference: https://www.w3resource.com/sqlite-exercises/

-- 1. 
select firstname as "First Name", lastname as "Last Name" from employees;
-- 2. Write a query to get unique birthdate from employee table
select distinct birthdate from employees;
-- 3. Write a query to get all employee details from the employee table order by first name, descending
select * from employees order by firstname desc;
select distinct country from customers;
-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select customerid, firstname, lastname, country from customers group by country having country != "USA";
-- Provide a query only showing the Customers from Brazil.
select customerid, firstname, lastname, country from customers group by country having country == "Brazil";
-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select customerid, firstname, lastname, country from customers group by country having country == "Brazil";