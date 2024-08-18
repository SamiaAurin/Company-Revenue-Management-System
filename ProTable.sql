CREATE OR REPLACE PROCEDURE ProTable
IS
    pid Product.Product_ID%TYPE;
    name Product.Name%TYPE;
    price Product.Per_Unit_Price%TYPE;

    -- Declare variables to store user input
    p1 NUMBER;
    p2 Product.Product_ID%TYPE;
    p3 Product.Name%TYPE;
    p4 Product.Per_Unit_Price%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Product TABLE: ');
    DBMS_OUTPUT.PUT_LINE('Product_ID  Name  Per_Unit_Price ');

    FOR I IN (SELECT * FROM Product) LOOP
        pid := I.Product_ID;
        name := I.Name;
        price := I.Per_Unit_Price;

        DBMS_OUTPUT.PUT_LINE(pid || '   ' || name || '   ' || price);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('For Add a row, ENTER 1');
    -- Use SQL*Plus substitution variables to read user input
    -- Assign the values of the substitution variables to PL/SQL variables
    p1 := &p1;
    
    IF p1 = 1 THEN
        p2 := &p2;
        p3 := '&p3';
        p4 := &p4;
        
        -- Insert the new row into the "Product" table
        INSERT INTO Product VALUES (p2, p3, p4);
    END IF;
END;
/
