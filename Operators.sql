 select*from hr.employees;

 select*from hr.employees where salary<10000

 select*from hr.employees where salary>10000

 select*from hr.employees where salary=10000

 select*from hr.employees where salary>=10000

 select*from hr.employees where salary<=10000

 select*from hr.employees where salary<>10000

 select*from hr.employees where manager_id >120 AND department_id<80

 select*from hr.employees where salary<25000 OR department_id<90

 select*from hr.employees where NOT salary=30000

 select*from hr.employees where first_name LIKE 'e%'

 select*from hr.employees where first_name LIKE '%e'

 select *from hr.employees where first_name LIKE '%n%'

 select salary from hr.employees where 2800 BETWEEN 10000  AND 20000

 select first_name|| ' ' || last_name as full_name from hr.employees
