--PL/SQL IF THEN statement example
SET SERVEROUTPUT ON;

DECLARE
    n_sales NUMBER := 1000000;
BEGIN
    IF n_sales > 100000 THEN
        DBMS_OUTPUT.PUT_LINE('Sales revenue is greater than 100k');
    END IF;
END;
/

--Tip # 1: Avoid clumsy IF statement
DECLARE 
    b_profitable BOOLEAN;
    n_sales NUMBER;
    n_costs NUMBER;
BEGIN
    IF n_sales > n_costs THEN --clumsy line. put it in declaration
        DBMS_OUTPUT.PUT_LINE(''This sales deal is profitable'');
    END IF;
END;
/

--FIXED
DECLARE 
    b_profitable := 
    n_sales
    n_costs
BEGIN
    b_profitable
    IF n_sales > n_costs THEN --clumsy line. put it in declaration
        b_profitable
    END IF;
END;
/


