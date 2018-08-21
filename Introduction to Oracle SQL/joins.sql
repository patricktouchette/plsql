--39. What are Table Aliases?
SELECT employee_id, first_name, last_name, e.salary
FROM employee e
Where e.salary < 30000;

--40. Columns Aliases
SELECT employee_id, first_name, last_name, e.salary AS "Annual Salary"
FROM employee e;

SELECT employee_id, first_name, last_name, e.salary AS "Annual Salary", e.salary/12 AS monthly_salary
FROM employee e;

SELECT department_id, COUNT(*) AS NUM_OF_EMPLOYEES
FROM employee
GROUP BY department_id
ORDER BY department_id;

--42. Inner Join
SELECT employee_id, first_name, last_name, department_name, department.department_id
FROM employee
JOIN department ON employee.department_id = department.department_id;

    --Adding aliases to make things clearer
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    d.department_id
FROM employee e
JOIN department d
ON e.department_id = d.department_id;

 ---Adding a where clause
 SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name,
    d.department_id
FROM employee e
JOIN department d
ON e.department_id = d.department_id
WHERE e.salary > 60000;

--43. LEFT Outer JOIN
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    co.order_date
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id;

SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
ORDER BY d.department_id;

--44. Right Outer JOIN
SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name
FROM employee e
RIGHT JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id;

--45. FULL OUTER JOIN
SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name
FROM employee e
FULL JOIN department d ON e.department_id = d.department_id
ORDER BY d.department_id;

--46. Natural JOIN (NOT recommended to use this)
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    department_id, --do not specify column
    d.department_name
FROM employee e
NATURAL JOIN department d;

SELECT product_id,
    product_name,
    department_id,
    department_name
    FROM product
    NATURAL JOIN department;

--47. Cartesian JOIN
SELECT first_name, last_name, employee_id,
    department.department_id,
    department_name
FROM employee, department;
--WHERE last_name = 'Foster';

SELECT first_name, last_name, employee_id,
    department.department_id,
    department_name
FROM employee
CROSS JOIN department;

--48. Self JOIN
SELECT
    emp.employee_id,
    emp.first_name,
    emp.last_name,
    emp.manager_id,
    managr.first_name,
    managr.last_name
FROM employee emp
LEFT JOIN employee managr ON emp.manager_id = managr.employee_id;

--49. JOINING Many Tables
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.address_state,
    co.order_id,
    co.product_id,
    co.order_date,
    p.product_name,
    p.price,
    d.department_name
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id
JOIN product p ON co.product_id = p.product_id
LEFT JOIN department d ON p.department_id = d.department_id
ORDER BY co.customer_id;

SELECT
    co.order_id,
    co.customer_id,
    co.product_id,
    co.order_date,
    p.product_name,
    p.price,
    c.first_name,
    c.last_name
FROM customer_order co
JOIN product p ON co.product_id = p.product_id
JOIN customer c ON co.customer_id = c.customer_id;
