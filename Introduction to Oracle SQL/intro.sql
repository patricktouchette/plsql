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
lesson 18