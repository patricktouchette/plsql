--How to View Data With the SELECT Statement
SELECT * FROM employee;

--Selecting Individual Columns
select employee_id, first_name, last_name
FROM employee;

SELECT department_id, department_name
FROM department;

--Filtering Data with WHERE
SELECT * FROM employee
WHERE first_name = 'Jessica';

SELECT * FROM employee
WHERE last_name = 'Jones';

--Comparison Operators
SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name != 'Jones';

SELECT employee_id, first_name, last_name
FROM employee
WHERE employee_id > 5;

SELECT employee_id, first_name, last_name
FROM employee
WHERE employee_id <= 8;

--Filtering on Partial Values with LIKE and the WHERE clause
SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name LIKE 'Bu%';

SELECT employee_id, first_name, last_name
FROM employee
WHERE last_name LIKE '%e%';

SELECT employee_id, first_name, last_name
FROM employee
WHERE first_name LIKE 'Ann_';

--Filtering on Date Values using the SQL WHERE Clause
SELECT *
FROM employee
WHERE hire_date = '03-OCT-2010';

SELECT *
FROM employee
WHERE hire_date <= '03-OCT-2010';

--TO FIND YOUR SYSTEM DATE
SELECT value
FROM SYS.NLS_DATABASE_PARAMETERS
WHERE parameter = 'NLS_DATE_FORMAT';

-- CHANGE THE CURRENT SESSIONS DATE FORMAT 
ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY';

--Using Two Filters in an SQL WHERE Clause
SELECT *
FROM employee
WHERE first_name = 'John' AND last_name = 'Hayes';

SELECT *
FROM employee
WHERE first_name = 'John' OR last_name = 'Foster';

--More Than Two Filters in an SQL WHERE Clause
SELECT * FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
AND salary < 70000;

SELECT * FROM employee
WHERE first_name = 'Barbara'
AND hire_date < '01-DEC-2014'
OR salary < 70000;

SELECT * FROM employee
WHERE first_name = 'Barbara'
AND (hire_date < '01-DEC-2014' OR salary < 70000);

SELECT * FROM employee
WHERE (first_name = 'Barbara' AND hire_date < '01-DEC-2014')
OR salary < 70000;

--What is NULL?
SELECT * FROM employee
WHERE salary IS NULL;

SELECT * FROM employee
WHERE salary IS NOT NULL;

--Getting Unique Records with DISTINCT
SELECT DISTINCT last_name
FROM employee;

SELECT DISTINCT last_name, department_id
FROM employee;

--IN and NOT IN
SELECT * FROM employee
WHERE last_name IN ('Foster', 'Elliot', 'Mitchell', 'Perry', 'Lawson');

SELECT * FROM employee
WHERE last_name NOT IN ('Foster', 'Elliot', 'Mitchell', 'Perry', 'Lawson');

--RANGE - BETWEEN and NOT BETWEEN
SELECT * FROM employee
WHERE hire_date >= '01-JAN-2016' AND hire_date <= '31-DEC-2016';

SELECT * FROM employee
WHERE hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

SELECT * FROM employee
WHERE employee_id BETWEEN 10 AND 20;

SELECT * FROM employee
WHERE hire_date NOT BETWEEN '01-JAN-2014' AND '31-DEC-2016';

--ALL Keyword
SELECT * FROM employee
WHERE salary > ALL( 30000, 40000, 50000);

--ANY Keyword
SELECT * FROM employee
WHERE salary > ANY (30000, 40000, 50000);

--Sorting Results with the ORDER BY Clause
SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name DESC;

SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY salary ASC;

SELECT employee_id, first_name, last_name, salary, hire_date
FROM employee
ORDER BY last_name DESC;

--Ordering By Multiple Columns
SELECT * from employee
ORDER BY last_name ASC, first_name ASC;

SELECT * from employee
ORDER BY hire_date ASC, employee_id DESC;

SELECT * from employee
ORDER BY last_name ASC, hire_date ASC, first_name ASC;

--Set Operators and UNION
SELECT first_name, last_name
FROM employee
UNION
SELECT first_name, last_name
FROM customer;

SELECT 'employee', first_name, last_name
FROM employee
UNION
SELECT 'customer', first_name, last_name
FROM customer
ORDER BY last_name;

SELECT 'employee', first_name, last_name
FROM employee
UNION
SELECT 'customer', first_name, last_name
FROM customer
ORDER BY 1, 2;

--Union ALL
SELECT 'employee', first_name, last_name
FROM employee
UNION ALL
SELECT 'customer', first_name, last_name
FROM customer
ORDER BY 1, 2;

--INTERSECT Operator
SELECT first_name, last_name
FROM employee
INTERSECT
SELECT first_name, last_name
FROM customer;

--MINUS
SELECT first_name, last_name
FROM employee
MINUS
SELECT first_name, last_name
FROM customer;

--Three or More Sets At Once
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 31000 AND 33000;

SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION 
(SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000)
MINUS
SELECT first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 31000 AND 33000;

--What are Functions?
IM here





























