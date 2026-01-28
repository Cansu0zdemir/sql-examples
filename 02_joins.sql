-- 02_joins.sql
-- SQL JOIN examples with basic explanations

-- INNER JOIN: returns records that have matching values in both tables
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

-- LEFT JOIN: returns all records from the left table and matched records from the right table
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id;

-- Employees without a department
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id
WHERE d.department_id IS NULL;
