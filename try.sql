DROP TABLE Prescription CASCADE CONSTRAINTS;
DROP TABLE Appointment CASCADE CONSTRAINTS;
DROP TABLE Doctor CASCADE CONSTRAINTS;
DROP TABLE Patient CASCADE CONSTRAINTS;


CREATE TABLE Patient (
  PID INT PRIMARY KEY,
  Name VARCHAR(20),
  Age INT,
  Gender VARCHAR(6),
  Address VARCHAR(15),
  Contact VARCHAR(13)
);

CREATE TABLE Doctor (
  DID INT PRIMARY KEY,
  Name VARCHAR(20),
  Specialty VARCHAR(15),
  Contact VARCHAR(13)
);

CREATE TABLE Appointment (
  AID INT PRIMARY KEY,
  PID INT,
  DID INT,
  ADate DATE,
  CONSTRAINT fk_patient
    FOREIGN KEY (PID)
    REFERENCES Patient(PID),
  CONSTRAINT fk_doctor
    FOREIGN KEY (DID)
    REFERENCES Doctor(DID)
);

CREATE TABLE Prescription (
  PrsID INT PRIMARY KEY,
  AID INT,
  Medication VARCHAR(30),
  Dosage VARCHAR(20),
  CONSTRAINT fk_appointment
    FOREIGN KEY (AID)
    REFERENCES Appointment(AID)
);


INSERT INTO Patient VALUES (1, 'John Doe', 35, 'Male', '123 Main St', '1234567890');

INSERT INTO Patient VALUES (2, 'Jane Smith', 25, 'Female', '456 Elm St', '9876543210');

INSERT INTO Patient VALUES (3, 'Bianca Anne', 25, 'Female', '49 Old Kent', '7776543217');

INSERT INTO Patient VALUES (4, 'William Martin', 40, 'Male', '78 Pall Mall', '9234567810');

INSERT INTO Patient VALUES (5, 'Coco', 25, 'Female', '78 Pall Mall', '9934567810');


INSERT INTO Doctor VALUES (1, 'Dr. Robert Johnson', 'Cardiology', '5551234567');

INSERT INTO Doctor VALUES (2, 'Dr. Sarah Williams', 'Orthopedics', '5559876543');

INSERT INTO Doctor VALUES (3, 'Dr. Andrew Kevin', 'Medicine', '5551873544');

INSERT INTO Doctor VALUES (4, 'Dr. Jesica John', 'Orthopedics', '5551873524');



INSERT INTO Appointment VALUES (1, 1, 1, DATE '2023-06-16');

INSERT INTO Appointment VALUES (2, 2, 2, DATE '2023-06-16');

INSERT INTO Appointment VALUES (3, 3, 3, DATE '2023-05-26');

INSERT INTO Appointment VALUES (4, 4, 1, DATE '2023-06-16');


INSERT INTO Prescription VALUES (1, 1, 'Aspirin', '1 tablet daily');

INSERT INTO Prescription VALUES (2, 2, 'Aspirin', '2 tablets as needed');

INSERT INTO Prescription VALUES (3, 3, 'Maxpro 40', '1 tablet daily night');

INSERT INTO Prescription VALUES (4, 2, 'Aspirin', '1 tablet as needed');

COMMIT;

SELECT * FROM Patient;
SELECT * FROM Doctor;
SELECT * FROM Appointment;
SELECT * FROM Prescription;