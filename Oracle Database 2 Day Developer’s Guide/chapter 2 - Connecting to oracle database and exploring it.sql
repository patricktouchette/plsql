-- Unlocking the HR Account
ALTER USER HR ACCOUNT UNLOCK IDENTIFIED BY password;
-- The system responds:
-- User altered.
-- The HR account is unlocked and its password is password.

--Viewing HR Schema Objects
COLUMN OBJECT_NAME FORMAT A25
COLUMN OBJECT_TYPE FORMAT A25

SELECT OBJECT_NAME, OBJECT_TYPE FROM USER_OBJECTS
ORDER BY OBJECT_TYPE, OBJECT_NAME;

--Viewing Tables and other views
SELECT *
FROM USER_TABLES;

SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM USER_INDEXES;
SELECT * FROM USER_TRIGGERS;

--Viewing EMPLOYEES Table Properties and Data
DESCRIBE employees;

--Querying the Employees table
SELECT first_name, last_name, phone_number
FROM employees
ORDER BY last_name;

SELECT first_name, last_name, phone_number
FROM employees
WHERE department_id = 90;

SELECT first_name, last_name, phone_number, department_id
FROM employees
WHERE department_id IN (100, 110, 120);

SELECT first_name, last_name, phone_number
FROM employees
WHERE last_name LIKE 'Ma%';

SELECT  first_name, last_name, salary, commission_pct "%"
FROM employees
WHERE (salary >= 11000) AND (commission_pct IS NOT NULL);

--Selecting Data from Multiple Tables
SELECT * FROM user_tables;
DESCRIBE employees;
DESCRIBE departments;

SELECT first_name, last_name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id
ORDER BY departments.department_name, last_name;

--Using Arithmetic Operators in Queries
SELECT last_name,
salary "Monthly Pay",
salary * 12 "Annual Pay"
FROM employees
WHERE department_id = 90
ORDER BY salary DESC;

SELECT last_name,
ROUND((( salary * 12)/365), 2) "Daily Pay"
FROM employees
WHERE department_id = 100
ORDER BY last_name;

--Using the Concatenation Operator in Queries
SELECT first_name || ' ' || last_name "Name"
FROM employees
WHERE department_id = 100
ORDER BY last_name;

--Using Character Functions in Queries
SELECT UPPER(last_name) "last",
INITCAP(first_name) "First",
LOWER(email) "Email"
FROM employees
WHERE department_id = 100
ORDER BY email;

--Example 2–18 Displaying the Number of Years Between Dates
SELECT last_name,
(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM hire_date)) "Years Employed"
FROM employees
WHERE department_id = 100
ORDER BY "Years Employed";

--Example 2–19 Displaying System Date and Time
select * from dual;
select systimestamp from dual;

SELECT to_char(systimestamp) from dual;
SELECT TO_CHAR(SYSDATE,'dd-Mon-yyyy hh:mi:ss PM') FROM dual;









