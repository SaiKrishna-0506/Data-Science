select * from hr.employees
--count employees for department
select department_id,count(*) as total_employees from hr.employees
group by department_id;

--total salary for department
select department_id,sum(salary) as total_salary from hr.employees
group by department_id;

--average salary for department
select department_id,avg(salary)as average_salary from hr.employees
group by department_id;

--minimum salary per department
select department_id,min(salary) as minimum_salary from hr.employees
group by department_id;

--maximum salary per department
select department_id , max(salary) as maximum_salary from hr.employees
group by  department_id ;

--count employees per job role
select job_id , count(*) as count_employees from hr.employees
group by job_id ;

--total salary for job role
select job_id ,sum(salary) as total_salary from hr.employees
group by job_id ;

--average salary per job role
select job_id,avg(salary) as average_salary from hr.employees
group by job_id ;

--departments with more than 5 employees
select department_id,count(*)from hr.employees
group by department_id
having count(*) > 5 ;

--departsments where total salary > 10,000
select department_id ,sum (salary) as total_salary from hr.employees
group by department_id
having sum(salary)>100000;

--departments where average salary > 50000
select department_id,avg(salary) as avg_salary from hr.employees
group by department_id
having avg(salary)>5000;

-- Departments where max salary > 80,000
select department_id,max(salary) as max_salary from hr.employees
group by department_id
having max(salary)>8000;

-- Departments where min salary < 30,000
select department_id,min(salary) as min_salary from hr.employees
group by department_id
having min(salary)< 30000

-- Departments where number of employees is between 5 and 10
select department_id,count(*) from hr.employees
group by department_id
having count(*) between 5 and 10;

--Departments where salary variance > 500,000
select department_id,variance(salary)from hr.employees
group by department_id
having variance(salary)>50000;

--Departments where salary standard deviation > 5,000
select department_id,stddev(salary)from hr.employees
group by department_id
having stddev(salary) > 500;

select*from hr.employees

-- Employees sorted by salary in descending order
select employee_id,first_name,salary from hr.employees
order by salary desc;

-- Employees sorted by department and salary
select employee_id,first_name,department_id,salary from hr.employees
order by department_id,salary asc;

--Employees sorted by last name alphabetically

select employee_id,first_name,last_name from hr.employees
order by last_name asc;

--Employees sorted by hire date
select employee_id,first_name,hire_date from hr.employees
order by  hire_date,first_name asc;

--Employees sorted by commission, placing NULLs last
select employee_id,first_name,commission_pct from hr.employees
order by commission_pct  nulls last;

--Employees sorted by commission, placing NULLs first
SELECT employee_id, first_name, commission_pct
FROM hr.employees
ORDER BY commission_pct NULLS FIRST;

--Employees sorted by length of first name
select employee_id,first_name from hr.employees 
order by length(first_name);

--Employees sorted by last two characters of last name
    SELECT employee_id,first_name,last_name from hr.employees
    order by substr(last_name,-2);


    --Employees sorted by uppercase first name
    select employee_id,first_name from hr.employees
    order by upper(first_name);

    --Employees sorted by salary after adding a bonus
    select employee_id,first_name,salary from hr.employees
    order by salary +500 desc;

    --Employees sorted by job ID and last name
    select employee_id,first_name,last_name,job_id
    from hr.employees
    order by last_name asc ,job_id;

    --Employees sorted by department, then by first name
    select employee_id,first_name,department_id from hr.employees
    order by department_id asc,job_id asc;

    -- Departments where total salary between 50,000 and 200,000
    select department_id,sum(salary) as total_salary from hr.employees
    group by department_id   
    having sum(salary) between 5000 and 20000;

    -- Departments where max salary is at least double the min salary
    select department_id,max(salary) as max_salary,min(salary) as min_salary from hr.employees
    group by department_id
    having max(salary)>=2* min(salary);

    -- Employees sorted by job ID then salary
    select employee_id,first_name,job_id,salary from hr.employees
    order by job_id asc ,salary desc;

    --Employees sorted by highest commission first

    select employee_id,first_name,commission_pct from hr.employees
    order by commission_pct desc nulls last;

    -- Employees sorted by department and descending salary
    select employee_id,first_name,department_id,salary from hr. employees
    order by department_id ,salary desc;

    --Basic Aggregate Functions


    --Count total employees
    select count(*) as total_employee from hr.employees;

    --Count distinct job roles
    select count ( distinct job_id) as unique_jobs from hr.employees;

    --Sum of salaries of all employees
    select sum(salary) as total_salary from hr.employees;

    -- Average salary of all employees
    select avg(salary)as avg_salary from hr.employees;

    -- Minimum salary in the company
    select min(salary) as min_salary from hr.employees;

    -- Maximum salary in the company
    select max(salary) as max_salary from hr.employees;

    --Median salary of all employees
    select median(salary)as median_salary from hr.employees;

    --Variance of salaries
    select variance(salary) as variance_salary from hr.employees;

    --Standard deviation of salaries
    select stddev (salary) as stddev_salary from hr.employees
