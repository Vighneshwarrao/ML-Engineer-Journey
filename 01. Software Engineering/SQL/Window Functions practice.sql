-- 7 days Window Functions
USE ecommerce_analytics;

-- EASY

-- Q1. Display every employee with a sequential row number
-- ordered by salary from highest to lowest.

select employee_name,salary,
	   row_number() over(order by salary desc) as row_num 
from employees;

-- Q2. Display every customer order with a sequential order number
-- for each customer based on order date.

select customer_id,order_date,
	   row_number() over(order by customer_id) as row_num
from orders;

-- Q3. Find the latest order of every customer.

select customer_id,order_date as latest_order
from  (
		select customer_id,order_date,
               row_number() over(partition by customer_id order by order_date desc) as row_num 
		from orders) o 
where row_num=1;

-- Q4. Assign employees a sequential number within each department
-- based on salary from highest to lowest.

select employee_name,salary,department,
	   row_number() over(partition by department order by salary desc) as rn
from employees;

-- Q5. Find the most recent Completed order for every customer.

select customer_id,order_date,order_id,order_status
from (
		select customer_id,order_date,order_id,order_status,
			   row_number() over(partition by customer_id order by order_date desc) as rn
		from orders
        where order_status="Completed") o
where rn=1;


-- MEDIUM


-- Q6. Rank all employees based on salary from highest to lowest.

select employee_name,salary,
	   rank() over(order by salary desc) as Salary_rank
from employees;


-- Q7. Rank employees within each department based on salary.

select employee_name,department,salary,
	   rank() over(partition by department order by salary desc) as salary_rank
from employees;

-- Q8. Find the highest-paid employee in each department.

with highest_salary as(
						select employee_name,department,salary,
							   rank() over(partition by department order by salary desc)  as rn
						from employees)
select employee_name,department,salary
from highest_salary
where rn=1;


-- Q9. Find the top 2 highest-paid employees from each department.

with highest_salary as(
						select employee_name,department,salary,
							   rank() over(partition by department order by salary desc)  as rn
						from employees)
select employee_name,department,salary
from highest_salary
where rn<=2;

-- Q10. Find employees who have the second-highest salary
-- in each department, including ties.

with second_highest_salary as(
						select employee_name,department,salary,
							   rank() over(partition by department order by salary desc)  as rn
						from employees)
select employee_name,department,salary
from second_highest_salary
where rn=2;

-- Q11. For every customer order, display the previous order date
-- for that customer.


-- Q12. For every customer order, display the amount of their
-- previous order.


-- Q13. Calculate the number of days between a customer's
-- current order and previous order.


-- Q14. Find customers whose latest order value is greater
-- than their previous order value.


-- Q15. For each customer, calculate the percentage change
-- in order value compared with their previous order.


-- Q16. For every customer order, display the next order date.


-- Q17. Find the number of days until a customer's next order.


-- Q18. Find customers who placed another order within 7 days
-- of their previous order.


-- Q19. For every order, display the customer, current order date,
-- next order date, and days until the next order.


-- Q20. Calculate the running total of sales ordered by date.


-- Q21. Calculate each customer's cumulative spending over time.


-- Q22. Calculate the cumulative sales for each store.


-- Q23. For every order, display the order value and the customer's
-- cumulative spending.


-- Q24. Calculate a 3-order moving average of sales.


-- Q25. Calculate the average order value for each customer
-- and display it alongside every order.


-- Q26. Show every customer order along with the total number
-- of orders that customer has placed.


-- Q27. Show every employee along with the number of employees
-- in their department.


-- Q28. Find customers who have placed more than 2 orders
-- using a window function.



-- HARD


-- Q29. Find the top 2 products by price in every product category.


-- Q30. Find the highest-value order placed at each store.


-- Q31. Rank customers by their total spending,
-- highest spender first.


-- Q32. For every customer, calculate their spending,
-- total company spending, and percentage of total spending.


-- Q33. For every employee display their salary,
-- department average salary, and difference from the
-- department average salary.


-- Q34. Find all customers whose current order value is
-- higher than their previous order value.


-- Q35. For every customer display their first order date,
-- latest order date, and total number of orders
-- using window functions.