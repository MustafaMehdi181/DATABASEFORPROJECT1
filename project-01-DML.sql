--Mustafa Mehdi, this file is DML for project 1 consisting of makin sp and filling data in tables


USE PatientDataBase;

-- Insert into ClinicRoles
INSERT INTO ClinicRoles VALUES 
(1,'Admin'), 
(2,'Clinic Manager'), 
(3,'Receptionist')

select* from Clinicroles

-- Insert into VisitTypes
INSERT INTO VisitTypes VALUES
(1,'Consultation'), 
(2,'Follow-up'), 
(3,'Emergency')

-- Insert into FeeRates
INSERT INTO FeeRates VALUES
(1,1, 500.00), 
(2,2, 300.00), 
(3,3, 1000.00)

-- Insert into Patients
INSERT INTO Patients VALUES
(1,'John Doe'), 
(2,'Jane Smith'), 
(3,'Ali Khan')

-- Insert into Doctors
INSERT INTO Doctors VALUES
(1,'Dr. Ahmed',1), 
(2,'Dr. Sarah',2)

-- Insert into VisitDetails
INSERT INTO VisitDetails VALUES
(1,1, 1, 1, '2025-08-01', 30, 'Routine check-up, all good'),
(2,2, 2, 3, '2025-08-05', 45, 'Emergency treatment for injury'),
(3,3, 1, 2, '2025-08-08', 20, 'Follow-up on blood test results')


select * from VisitDetails 