--60. Inserting Data From Another Table
INSERT INTO employee(employee_id, first_name, last_name)
SELECT 250, first_name, last_name
FROM customer
WHERE customer_id = 1
;

--61. UPDATE data in a table
SELECT * FROM employee
WHERE employee_id = 85;

UPDATE employee
SET salary = salary + 10000
WHERE employee_id = 85;

SELECT *
FROM employee
WHERE employee_id IN (102, 59, 16);

UPDATE employee
SET manager_id = 30,
salary = salary + 5000
WHERE employee_id IN (102, 59, 16);

--62. DELETE DATA from table
--DELETE FROM table
DELETE FROM employee
WHERE employee_id = 250;

SELECT * FROM employee
ORDER BY employee_id DESC;

--63. COMMIT and ROLLBACK
INSERT INTO product (product_id, product_name,
price, department_id)
VALUES (12, 'Large Table', 222.50, 2);

SELECT * FROM product;

COMMIT;

INSERT INTO product (product_id, product_name,
price, department_id)
VALUES (13, 'Red Chair', 52.50, 6);

SELECT * FROM product;

ROLLBACK;

SELECT * FROM product;

--64. TRUNCATE data from a table
--Advantage: it's faster but deletes everything
--right away (no rollback available)
--good for large tables

SELECT * FROM customer_order;

TRUNCATE TABLE customer_order;

--65. CREATE TABLE
CREATE TABLE job_role (
    job_role_id NUMBER(10),
    role_name VARCHAR2(50),
    role_create_date DATE
);

SELECT * FROM job_role;

--66. ALTER A TABLE
ALTER TABLE job_role
ADD job_description VARCHAR2(200);

SELECT * FROM job_role;

ALTER TABLE job_role
DROP COLUMN job_description;

ALTER TABLE job_role
RENAME COLUMN role_name TO job_title;

ALTER TABLE job_role
RENAME TO job_title;

SELECT * FROM job_title;

--67. DROP a TABLE;
DROP TABLE job_title;

SELECT * FROM job_title;

68






