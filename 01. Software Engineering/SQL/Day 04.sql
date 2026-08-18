-- DAY 4: CASE, STRING FUNCTIONS, DATE FUNCTIONS

USE companydb;

-- Q1. Salary category:
-- High >= 120000 | Medium 70000-119999 | Low < 70000.

select salary,case when salary>=120000 
					then "High"
				when salary between 70000 and 119999 
					then "Medium" 
				else "Low"
                end as Category
from employees;
-- Q2. Return full name and full-name length.

select concat(first_name," ",last_name) as Full_Name,
	   length(concat(first_name," ",last_name)) as length
from employees;

-- Q3. Employees with > 5 completed years of service as of 2026-08-17.

select employee_id , timestampdiff(YEAR,hire_date,'2026-08-17') as experience
from employees
where timestampdiff(YEAR,hire_date,'2026-08-17') > 5;

-- Q4. For each department, count High, Medium, and Low salary employees.
-- High >= 120000 | Medium 70000-119999 | Low < 70000.

select department_id,
	   sum(case when salary>=120000 then 1 else 0 end) as High,
       sum(case when salary between 70000 and 119999 then 1 else 0 end) as Medium,
       sum(case when salary<70000 then 1 else 0 end) as Low
from employees
group by department_id
order by department_id;

-- Q5. Full names containing 'a' at least twice.
-- Return name and occurrence count.

select concat(first_name," ",last_name) as Full_Name
from employees
where length(lower(concat(first_name," ",last_name)))- length(replace(lower(concat(first_name," ",last_name)),'a','')) >=2;

-- Q6. Employee count for each hire year.
-- Sort by year ASC.
select year(hire_date) as year, count(*) as employee_count
from employees
group by year(hire_date)
order by year(hire_date);

-- Q7. Employee level:
-- Senior < 2020 | Mid-Level 2020-2022 | Junior >= 2023.

select employee_id,year(hire_date) as Hired_year,
	   case when year(hire_date)<2020 then "Senior"
       when year(hire_date) between 2020 and 2022 then "Mid-Level"
       else "Junior"
       end as Employee_Level
from employees;

-- Q8. For each department, compare total High-salary pay vs Low-salary pay.
-- Return departments where High total > Low total.

select department_id,
	   sum(case when salary>=120000 then salary else 0 end) as High_salary,
       sum(case when salary<70000 then salary else 0 end) as Low_salary
from employees
group by department_id
having High_salary>low_salary;

-- Q9. Top 3 hire years by employee count.

select year(hire_date) as year, count(*) as employee_count
from employees
group by year(hire_date)
order by employee_count desc
limit 3;

-- Q10. Employees whose first and last names start with the same letter.
-- Return full name, first initial, last initial.
select concat(first_name," ",last_name) as Full_name,
	   left(first_name,1) as first_initial,
       left(last_name,1) as last_initial
from employees
where lower(left(first_name,1)) = lower(left(last_name,1));