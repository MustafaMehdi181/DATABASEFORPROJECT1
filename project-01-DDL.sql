-- Use database
USE PatientDataBase;

-- 1. Patients
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY , PatientName VARCHAR(100) NOT NULL
)

-- 2. Clinic Roles
CREATE TABLE ClinicRoles (
    RoleID INT PRIMARY KEY ,
    RoleName VARCHAR(50) NOT NULL UNIQUE
)

-- 3. Doctors
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100) NOT NULL,
    RoleID INT NOT NULL,
    FOREIGN KEY (RoleID) REFERENCES ClinicRoles(RoleID)
)

-- 4. Visit Types
CREATE TABLE VisitTypes (
    VisitTypeID INT PRIMARY KEY,
    VisitTypeName VARCHAR(50) NOT NULL UNIQUE
)

-- 5. Fee Rates
CREATE TABLE FeeRates (
    FeeRateID INT PRIMARY KEY ,
    VisitTypeID INT NOT NULL,
    Rate DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (VisitTypeID) REFERENCES VisitTypes(VisitTypeID)
);

-- 6. Visit Details
CREATE TABLE VisitDetails (
    VisitID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    VisitTypeID INT NOT NULL,
    VisitDate DATE NOT NULL,
    Duration INT NOT NULL,
    DoctorNotes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (VisitTypeID) REFERENCES VisitTypes(VisitTypeID)
);
