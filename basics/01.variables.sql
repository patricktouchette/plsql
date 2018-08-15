SET SERVEROUTPUT ON
DECLARE
    v_myName VARCHAR(20);
BEGIN
    DBMS_OUTPUT.PUT_LINE('My name is: ' ||v_myName);
    v_myName := 'John';
    DBMS_OUTPUT.PUT_LINE('My name is: ' ||v_myName);
END;
/

--SQL SELECT
SELECT SALARY FROM HR.employees
WHERE employee_id = 100;

--PL/SQL SELECT INTO statement
SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER(8);
BEGIN
    SELECT salary INTO v_salary FROM HR.employees
    WHERE employee_id = 100;
    DBMS_OUTPUT.PUT_LINE(v_salary);
END;
/

--PL/SQL SELECT INTO statement multiple variables
SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER(8);
    v_fname VARCHAR2(20);
BEGIN
    SELECT salary, first_name INTO v_salary, v_fname FROM HR.employees
    WHERE employee_id = 100;
    DBMS_OUTPUT.PUT_LINE(v_fname || ' has this salary: ' || v_salary);
END;
/

--PL/SQL tutorial 4: Anchored Datatype (%TYPE)



















--VARIABLES TYPES
DECLARE
    v_emp_job VARCHAR2(9);
    v_count_loop BINARY_INTEGER := 0;
    v_dept_total_sal NUMBER(9,2) := 0;
    v_orderdate DATE := SYSDATE + 7;
    c_tax_rate CONSTANT NUMBER(3,2) := 8.25;
    v_valid BOOLEAN NOT NULL := TRUE;
BEGIN


-- %TYPE attribute ... very important
v_emp_lname employee.last_name%TYPE;
v_min_balance v_balance%TYPE := 1000;

//BIND VARIABLES / HOST variables

VARIABLE b_emp_salary NUMBER
BEGIN
    SELECT b_emp_salary
    INTO :b_emp_salary
    FROM employees
    WHERE employee_id = 178;
END;
/

PRINT b_emp_salary
