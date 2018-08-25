--58. Single Row Subqueries
SELECT AVG(salary)
FROM employee;

SELECT employee_id,
    first_name,
    last_name,
    salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

--59. Multi Row Subqueries
SELECT 
    department_id,
    department_name
FROM department
WHERE department_name IN ('Sales', 'Finance');

SELECT first_name,
    last_name,
    department_id
FROM employee
WHERE department_id IN (
    SELECT 
        department_id
    FROM department
    WHERE department_name IN ('Sales', 'Finance')
);

