-- DAY 1: SELECT, WHERE, ORDER BY, DISTINCT, LIMIT

USE companydb;
-- Q1. Get first_name, last_name, salary of all employees.

select first_name,last_name,salary
from employees;

-- Q2. Employees with salary > 100000.

select first_name ,last_name
from employees
where salary>100000;

-- Q3. All employees sorted by salary DESC.
select first_name,last_name , salary
from employees
order by salary DESC;

-- Q4. Unique cities from Customers.

select  distinct city
from customers;

-- Q5. Employees hired after 2020-01-01 with salary > 80000.
-- Sort by salary DESC.
select first_name,last_name ,hire_date, salary
from employees
where hire_date > '2020-01-01' 
and salary>80000
order by salary desc;

-- Q6. Top 5 highest-paid employees.
select first_name,last_name,salary
from employees
order by salary desc
limit 5;

-- Q7. Unique cities of Indian customers with customer_id > 20.
select distinct city
from customers
where country='India' 
and customer_id>20;

-- Q8. Top 10 most expensive Electronics products that are in stock.

select product_name,category,price
from products
where category='Electronics'
and stock>0
order by price DESC
limit 10;

-- Q9. 3 lowest-paid employees hired after 2022-01-01.

select first_name,last_name ,hire_date, salary
from employees
where hire_date > '2022-01-01' 
order by salary
limit 3;

-- Q10. 5 most recent orders that are not Cancelled.
select order_id,order_date,status
from orders
where status != 'Cancelled'
order by order_date desc
limit 5;
