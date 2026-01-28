-- 04_subqueries.sql
-- SQL subquery examples

-- Employees earning more than the average salary
SELECT 
    employee_id,
    first_name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Employees working in the same department as 'John'
SELECT 
    employee_id,
    first_name,
    department_id
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE first_name = 'John'
);

-- Departments with at least one employee earning more than 10000
SELECT DISTINCT department_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE salary > 10000
);

-- Employees whose salary is higher than their department average
SELECT 
    e.employee_id,
    e.first_name,
    e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
