
--Mustafa Mehdi : stored procedures for CRUD operations on PatientVisit table

USE PatientDataBase;
GO

--C
CREATE PROCEDURE stp_AddVisitDetail
    @VisitID INT,
    @PatientID INT,
    @DoctorID INT,
    @VisitTypeID INT,
    @VisitDate DATE,
    @Duration INT,
    @DoctorNotes TEXT
AS
BEGIN
    INSERT INTO VisitDetails (VisitID, PatientID, DoctorID, VisitTypeID, VisitDate, Duration, DoctorNotes)
    VALUES (@VisitID, @PatientID, @DoctorID, @VisitTypeID, @VisitDate, @Duration, @DoctorNotes);
END
GO

--R
CREATE PROCEDURE stp_GetVisitDetails
    @VisitID INT = NULL
AS
BEGIN
    IF @VisitID IS NULL
        SELECT * FROM VisitDetails;
    ELSE
        SELECT * FROM VisitDetails WHERE VisitID = @VisitID;
END
GO

--U
CREATE PROCEDURE stp_UpdateVisitDetail
    @VisitID INT,
    @PatientID INT,
    @DoctorID INT,
    @VisitTypeID INT,
    @VisitDate DATE,
    @Duration INT,
    @DoctorNotes TEXT
AS
BEGIN
    UPDATE VisitDetails
    SET PatientID = @PatientID,
        DoctorID = @DoctorID,
        VisitTypeID = @VisitTypeID,
        VisitDate = @VisitDate,
        Duration = @Duration,
        DoctorNotes = @DoctorNotes
    WHERE VisitID = @VisitID;
END
GO

--D
CREATE PROCEDURE stp_DeleteVisitDetail
    @VisitID INT
AS
BEGIN
    DELETE FROM VisitDetails
    WHERE VisitID = @VisitID;
END
GO

--Executing CRUD
EXEC stp_AddVisitDetail 101, 1, 2, 1, '2025-08-15', 40, 'Routine dental check-up';

select*from VisitDetails

EXEC stp_GetVisitDetails;


EXEC stp_UpdateVisitDetail 101, 1, 2, 2, '2025-08-16', 45, 'Changed to follow-up after treatment';

EXEC stp_DeleteVisitDetail 101;
