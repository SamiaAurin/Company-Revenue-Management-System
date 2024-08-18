DROP TABLE SALES2 CASCADE CONSTRAINTS;
DROP TABLE Product CASCADE CONSTRAINTS;

CREATE TABLE Product
(
   Product_ID INT PRIMARY KEY,
   Name VARCHAR(30),
   Per_Unit_Price INT );


CREATE TABLE SALES2
(
   Sales_ID INT PRIMARY KEY,
   Product_ID INT,
   Month VARCHAR(10),
   Year VARCHAR(4),
   Area VARCHAR(20),
   Unit INT,
   Total_Price INT,
   CONSTRAINT fk_product
     FOREIGN KEY (Product_ID) 
     REFERENCES Product(Product_ID) );


