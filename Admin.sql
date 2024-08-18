DROP TABLE Admins;

CREATE TABLE Admins
(
   Admin_ID INT PRIMARY KEY,
   Name VARCHAR(40),
   Email VARCHAR(40),
   Password VARCHAR(30) );
   
   
INSERT INTO Admins VALUES (1, 'Aurin', 'aurin@gmail.com', 'admin1'); 
INSERT INTO Admins VALUES (2, 'Dipu', 'dipu@gmail.com', 'admin2');     
