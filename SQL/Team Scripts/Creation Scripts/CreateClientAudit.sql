CREATE TABLE Client_Audit (
 ClientID int NOT NULL,
 FirstName varchar(25) NOT NULL,
 LastName varchar(25) NOT NULL,
 AddressID int NOT NULL,
 PhoneNumberID int NOT NULL,
 ClientDomainID int NOT NULL,
 TempClient bit NOT NULL,
 Audit_Action varchar(100),
 Audit_Timestamp datetime
);