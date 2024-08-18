SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PROCEDURE SalesTable
IS
    sid SALES1.Sales_ID%TYPE;
	pid SALES1.Product_ID%TYPE;
    mon SALES1.Month%TYPE;
    yr  SALES1.Year%TYPE;
	ar  SALES1.Area%TYPE;
	un  SALES1.Unit%TYPE;
	tp  SALES1.Total_Price%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('SALES TABLE: ');
    DBMS_OUTPUT.PUT_LINE('Sales_ID Product_ID  Month  Year Area Unit Total_Price');

    FOR I IN (SELECT * FROM SALES1) LOOP
	    sid := I.Sales_ID;
        pid := I.Product_ID;
        mon := I.Month;
        yr := I.Year;
		ar := I.Area;
		un := I.Unit;
		tp := I.Total_Price;

        DBMS_OUTPUT.PUT_LINE(sid ||'  '|| pid || '   ' || mon || '   ' || yr ||'  '||ar||'  '|| un ||'  '|| tp);
    END LOOP;
END;
/
