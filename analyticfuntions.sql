select*from hr.jobs
--  rank,denserank,rownumber for  salaries in hr.jobs
select job_id,job_title,min_salary , rank() over(order by min_salary) from hr.jobs
select job_id,job_title,max_salary,rank() over(order by max_salary) from hr.jobs
select job_id,job_title,min_salary,dense_rank()over(order by min_salary)from hr.jobs
select job_id,job_title,max_salary,dense_rank()over(order by max_salary)from hr.jobs
select job_id,job_title,dense_rank()over(order by job_id)from hr.jobs
select job_id,job_title,max_salary,row_number()over(order by max_salary ) from hr.jobs
-- partition method for hr.jobs 
select job_id,job_title,min_salary,rank() over(partition by job_id order by min_salary desc) from hr.jobs ;  
select job_id,job_title,max_salary,dense_rank() over(partition by job_id order by max_salary desc)from hr.jobs
select job_id,job_title,max_salary,row_number() over(partition by job_id order by max_salary desc)from hr.jobs
select job_id,max_salary from hr.jobs where max_salary>4000
select job_id,job_title,max_salary salary from hr.jobs
select job_id, max_salary salary from hr.jobs
select*from hr.jobs
-- inline queries
select job_id,max_salary from(select job_id,max_salary from hr.jobs where max_salary>4000)
-- subqueries
select job_id ,min_salary from hr.jobs where max_salary>(select avg(max_salary)from hr.jobs)
-- multi row subquery
select *from hr.employees
select employee_id from hr.employees where department_id in (select department_id from hr.employees where employee_id=102 )
-- common table expression
with ranksalaries as(
    select employee_id,salary,
    rank()over (partition by department_id order by salary)as rk from hr.employees

)
select employee_id from ranksalaries where rk=1;
with ranksalaries as(
    select employee_id,salary,department_id,
    rank()over (partition by department_id order by salary)as rk  from hr.employees

)
select employee_id,department_id,salary from ranksalaries whereand rk=1;
