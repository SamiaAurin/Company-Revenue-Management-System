SET SERVEROUTPUT ON;
SET VERIFY OFF;

---admin log in korbe--
ACCEPT A1 CHAR PROMPT "Enter your Name : "
ACCEPT A2 CHAR PROMPT "Enter your password : "

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
            
            END IF;
        END;
    ELSIF us = 'Dipu' AND pas = 'admin2' THEN
        DBMS_OUTPUT.PUT_LINE('Login Successful as Admin');
        
    ELSE
        DBMS_OUTPUT.PUT_LINE('Wrong Username or Password');
    END IF;
END Adminlog;
/

DECLARE
    u Admins.Name%TYPE := '&A1';
    p Admins.Password%TYPE := '&A2';
BEGIN
    Adminlog(u, p);
END;
/