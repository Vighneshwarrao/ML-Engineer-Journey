-- DAY 5: INNER JOIN, LEFT JOIN, RIGHT JOIN, SELF JOIN

USE companydb;


-- EASY

-- Q1. Display employee name and department name.

select concat(e.first_name," ",e.last_name) as employee_name,
	   d.department_name
from employees e
join departments d
on e.department_id=d.department_id;

-- Q2. Display order ID, customer name, order date, and amount.

select o.order_id,c.customer_name,o.order_date,o.total_amount
from orders o
join customers c
on o.customer_id=c.customer_id;

-- Q3. All departments with employee count, including departments with 0 employees.

select d.department_name, count(e.employee_id) as employee_count
from departments d
left join employees e
on e.department_id=d.department_id
group by d.department_name;

-- MEDIUM

-- Q4. Employee name, department name, and salary.

select concat(e.first_name," ",e.last_name) as employee_name,
	   d.department_name,e.salary
from employees e
join departments d
on e.department_id=d.department_id;

-- Q5. Customers who have never placed an order.

select c.customer_name
from customers c
left join orders o
on c.customer_id=o.customer_id
where o.order_id is NULL;


-- Q6. Total order value for each customer.
-- Sort by total value DESC.

select c.customer_id,c.customer_name, sum(o.total_amount) total_value
from customers c
join orders o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
order by total_value desc;

-- Q7. All departments and their employees, including empty departments.

select d.department_name , 
	   concat(e.first_name," ",e.last_name) as employee_name
from departments d
left join employees e
on d.department_id=e.department_id;

-- HARD

-- Q8. Display each employee and their manager.

select concat(e1.first_name," ",e1.last_name) as employee_name,
	   concat(e2.first_name," ",e2.last_name) as manager_name
from employees e1
left join employees e2
on e1.manager_id=e2.employee_id;

-- Q9. Employee name, department name, and project count.
-- Include employees with 0 projects.

select concat(e.first_name," ",e.last_name) as employee_name,
	   d.department_name,
       count(p.project_id) as project_count
from employees e
left join departments d
on e.department_id=d.department_id
left join employee_projects p
on e.employee_id=p.employee_id
group by e.employee_id,employee_name,department_name;

-- Q10. Customers with orders but no Cancelled orders.
-- Return customer ID, name, and total order count.

select c.customer_id,c.customer_name,
	   count(o.order_id) as total_order_count
from customers c
join orders o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
having sum(o.status="Cancelled")=0;