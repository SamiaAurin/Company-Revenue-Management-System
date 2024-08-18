CREATE OR REPLACE PROCEDURE Adminlog(us IN Admins.Name%TYPE, pas IN Admins.Password%TYPE)
IS
BEGIN
    IF us = 'Aurin' AND pas = 'admin1' THEN
        DBMS_OUTPUT.PUT_LINE('Login Successful as Admin');
		
        DBMS_OUTPUT.PUT_LINE('For Product TABLE, ENTER 1');
        DBMS_OUTPUT.PUT_LINE('For SALES TABLE, ENTER 2');
		DBMS_OUTPUT.PUT_LINE('For EXPENSE TABLE, ENTER 3');
		DBMS_OUTPUT.PUT_LINE('For REVENUE TABLE, ENTER 4');

        DECLARE
            inputs NUMBER := 0;
        BEGIN
            inputs := &I1;

            IF inputs = 1 THEN
                ProTable;
            ELSIF inputs = 2 THEN
                SalesTable;
            -- Implement other cases for Expense and Revenue tables if needed
            END IF;
        END;
    ELSIF us = 'Dipu' AND pas = 'admin2' THEN
        DBMS_OUTPUT.PUT_LINE('Login Successful as Admin');
        -- Add further actions for Dipu admin if needed
    ELSE
        DBMS_OUTPUT.PUT_LINE('Wrong Username or Password');
    END IF;
END;
/