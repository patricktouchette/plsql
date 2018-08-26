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
