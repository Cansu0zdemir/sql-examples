-- 01_basic_selects.sql
-- Basic SQL SELECT examples

-- Select all columns from a table
SELECT * 
FROM employees;

-- Select specific columns
SELECT employee_id, first_name, last_name, department
FROM employees;

-- Filter results using WHERE
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > 5000;

-- Use ORDER BY to sort results
SELECT employee_id, first_name, salary
FROM employees
ORDER BY salary DESC;

-- Limit number of rows (syntax may vary by DB)
-- Note: FETCH FIRST is preferred over LIMIT in Oracle

SELECT employee_id, first_name, hire_date
FROM employees
ORDER BY hire_date DESC
FETCH FIRST 5 ROWS ONLY;
