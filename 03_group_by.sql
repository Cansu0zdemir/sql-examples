-- 03_group_by.sql
-- SQL GROUP BY and aggregate function examples

-- Count employees by department
SELECT 
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

-- Average salary by department
SELECT 
    department_id,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- Departments with more than 5 employees
SELECT 
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- Total salary cost per department
SELECT 
    department_id,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC;
