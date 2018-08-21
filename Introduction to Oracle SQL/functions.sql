--51. String Functions
    --INSTR (in string)
SELECT 
    customer_id,
    first_name,
    last_name,
    email_address,
    INSTR(email_address, '@'),
    LENGTH(address_state)
FROM customer;

SELECT 
    customer_id,
    first_name,
    last_name,
    email_address,
    INSTR(email_address, '@'),
    LENGTH(address_state)
FROM customer
WHERE INSTR(email_address, '@') > 0
AND LENGTH(address_state) <= 2
ORDER BY LENGTH(email_address) DESC
;

--52. Nesting Functions Within Functions
SELECT 
    customer_id,
    first_name,
    last_name,
    email_address,
    INSTR(email_address, '@'),
    SUBSTR(email_address, INSTR(email_address, '@') + 1, LENGTH(email_address)) AS domain
FROM customer;

--53. Number function
--  ROUND
--  CEIL
--  FLOOR

SELECT product_id,
product_name,
price,
ROUND(price),
ROUND(price, 1),
CEIL(price),
FLOOR(price)
FROM product
;

SELECT
    product_id,
    product_name,
    price,
    price * 9 * 0.85,
    ROUND(price * 9 * 0.85, 2)
FROM product
WHERE product_id = 1;

--54. Date Functions
SELECT employee_id,
first_name,
last_name,
hire_date,
ADD_MONTHS(hire_date, 6) as review_date,
ADD_MONTHS(hire_date, 60) as five_year
FROM employee
;


SELECT employee_id,
first_name,
last_name,
hire_date,
MONTHS_BETWEEN(SYSDATE, hire_date) AS time_with_company,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12, 1) AS years
FROM employee
;

SELECT SYSDATE,
ADD_MONTHS(SYSDATE, 20)
FROM dual;




