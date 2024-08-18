CREATE OR REPLACE PROCEDURE ProTableAdd(
    new_product_id IN Product.Product_ID%TYPE,
    new_name IN Product.Name%TYPE,
    new_per_unit_price IN Product.Per_Unit_Price%TYPE
)
IS
BEGIN
    -- Insert the new row into the "Product" table
    INSERT INTO Product (Product_ID, Name, Per_Unit_Price)
    VALUES (new_product_id, new_name, new_per_unit_price);

    DBMS_OUTPUT.PUT_LINE('New row added successfully.');
END;
/
