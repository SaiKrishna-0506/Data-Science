-- This query groups employees by department_id and counts how many employees exist in each.
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

-- This query calculates the average salary for employees in each department.
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- This query finds the highest and lowest salaries for each department.
SELECT department_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id;

-- This query sums up all employee salaries in each department.
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- This query counts the number of employees who have the same job role.
SELECT job_id, COUNT(*) AS total_employees
FROM employees
GROUP BY job_id;

-- This query calculates the average salary for employees in each job role.
SELECT job_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY job_id;

-- This query finds the highest salary assigned to employees for each job role.
SELECT job_id, MAX(salary) AS max_salary
FROM employees
GROUP BY job_id;

-- This query finds the lowest salary assigned to employees for each job role.
SELECT job_id, MIN(salary) AS min_salary
FROM employees
GROUP BY job_id;

-- This query calculates the total salary payout for employees in each job role.
SELECT job_id, SUM(salary) AS total_salary
FROM employees
GROUP BY job_id;

-- This query extracts the year from the hire_date and counts employees hired in each year.
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS total_employees
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;

-- This query sums up the total salary per location by joining employees with department locations.
SELECT d.location_id, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.location_id;

-- This query counts the employees who report to each manager.
SELECT manager_id, COUNT(*) AS team_size
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- This query finds the highest salary among employees reporting to each manager.
SELECT manager_id, MAX(salary) AS max_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- This query calculates the average salary of employees reporting to each manager.
SELECT manager_id, AVG(salary) AS avg_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- This query extracts the month from hire_date and counts how many employees were hired in each month.
SELECT EXTRACT(MONTH FROM hire_date) AS hire_month, COUNT(*) AS total_hired
FROM employees
GROUP BY EXTRACT(MONTH FROM hire_date)
ORDER BY hire_month;

-- This query finds the department that pays the highest total salary by sorting in descending order.
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROW ONLY;

-- This query finds the job role with the highest average salary by sorting in descending order.
SELECT job_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY job_id
ORDER BY avg_salary DESC
FETCH FIRST 1 ROW ONLY;

-- This query counts the number of employees per city, assuming departments are linked to locations.
SELECT l.city, COUNT(*) AS total_employees
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
GROUP BY l.city;

-- This query counts employees who receive a commission, grouped by department.
SELECT department_id, COUNT(*) AS employees_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;

-- This query sums up the salaries of employees who receive a commission, grouped by department.
SELECT department_id, SUM(salary) AS total_salary_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;
