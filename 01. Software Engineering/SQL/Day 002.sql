-- DAY 2: OPERATORS, LIKE, IN, BETWEEN, NULL

use companydb;

-- Q1. Employees with salary < 50000.

select first_name,last_name,salary
from employees
where salary<50000;

-- Q2. Male employees with salary > 100000.

select first_name,last_name,gender,salary
from employees
where salary>100000
and gender='Male';

-- Q3. Customers from Mumbai, Delhi, or Hyderabad.

select customer_name,city
from customers
where city in ('Mumbai','Delhi','Hyderabad');

-- Q4. Employees with salary between 60000 and 120000.

select first_name,last_name,salary
from employees
where salary between 60000 and 120000;

-- Q5. Employees whose first_name starts with A.

select * 
from employees
where first_name like 'A%';

-- Q6. Products whose name contains "Pro".

select * 
from products
where product_name like 'Pro%';

-- Q7. Pending, Shipped, or Delivered orders with amount > 500000.

select * 
from orders
where status in ('Pending','Shipped','Delivered')
and total_amount>500000;

-- Q8. Employees whose last_name starts with S and salary > 80000.

select *
from employees
where last_name like 'S%'
and salary > 80000;

-- Q9. Employees hired between 2019 and 2023,
-- salary between 70000 and 130000,
-- department 2, 4, or 9.

select *
from employees
where hire_date between '2019-01-01' and '2023-12-31'
and salary between 70000 and 130000
and department_id in (2,4,9);

-- Q10. Non-Electronics products with price between 20000 and 70000
-- and stock > 50.

select *
from products
where category <> 'Electronics'
and price between 20000 and 70000
and stock > 50;
