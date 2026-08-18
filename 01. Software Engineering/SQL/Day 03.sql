-- DAY 3: AGGREGATE FUNCTIONS, GROUP BY, HAVING

USE companydb;

-- Q1. Employee count for each department.

select count(*) as employee_count ,department_id
from employees
group by department_id;

-- Q2. Departments with average salary > 80000.

select department_id , avg(salary) as avg_salary
from employees
group by department_id
having avg(salary) > 80000;

-- Q3. Order count, total value, and average value for each status.

select status,
	   count(status) as order_count,
	   sum(total_amount) as total_value,
       avg(total_amount) as avg_value
from orders
group by status;

-- Q4. Top 5 departments by total salary.

select department_id,
	   sum(salary) as total_salary
from employees
group by department_id
order by total_salary desc
limit 5;

-- Q5. Departments with >= 5 employees and average salary > 75000.

select department_id,
	   count(employee_id) as employee_count,
       avg(salary) as avg_salary
from employees
group by department_id
having count(employee_id)>=5
and avg(salary)>75000;

-- Q6. Top 5 customers by total order value.

select customer_id,
	   sum(total_amount) as total_order_value
from orders
group by customer_id
order by  total_order_value desc
limit 5;

-- Q7. Product categories with product count, average price,
-- total stock. Keep categories with total stock > 500.

select category,
       count(product_id) as product_count,
       avg(price)  avg_price,
       sum(stock) as total_stock
from products
group by category
having sum(stock) > 500;

-- Q8. Departments where max salary is at least twice min salary.

select department_id,
	   max(salary) as max_salary,
       min(salary) as min_salary
from employees
group by department_id
having max(salary)>=min(salary)*2;

-- Q9. Top 3 customers by Delivered order value,
-- considering customers with >= 5 Delivered orders.

select customer_id,
	   sum(total_amount) as delivered_order_value,
       count(status) as orders_count
from orders
where status='Delivered'
group by customer_id
having count(status)>=5
order by delivered_order_value desc
limit 3;

-- Find the product category with the highest total sales revenue, where revenue = quantity × price

select p.category,
	   sum(o.quantity*o.price) as total_sales_revenue
from products p 
join order_details o
on p.product_id=o.product_id
group by p.category
order by total_sales_revenue desc
limit 1;