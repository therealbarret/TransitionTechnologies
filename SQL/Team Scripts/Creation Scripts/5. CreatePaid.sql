CREATE TABLE Paid (
 PaidID int NOT NULL IDENTITY(1,1),
 Paid smallmoney NOT NULL,
 PaidToDate date,
 CONSTRAINT PK_Paid PRIMARY KEY (PaidID),
);