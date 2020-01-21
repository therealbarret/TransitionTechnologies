CREATE TABLE PhoneNumber (
 PhoneNumberID int NOT NULL IDENTITY(1,1),
 AreaCodeID int NOT NULL,
 Number varchar(10),
 CONSTRAINT PK_PhoneNumber PRIMARY KEY (PhoneNumberID),
 CONSTRAINT FK_AreaCode FOREIGN KEY (AreaCodeID) REFERENCES AreaCode(AreaCodeID) ON UPDATE CASCADE
);