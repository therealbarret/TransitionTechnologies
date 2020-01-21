CREATE TABLE Requirements (
 RequirementsID int NOT NULL IDENTITY(1,1),
 Requirements varchar(50) NOT NULL,
 Program varchar(25) NOT NULL,
 ServicesID int NOT NULL,
 CONSTRAINT PK_Requirements PRIMARY KEY (RequirementsID),
 CONSTRAINT FK_Services FOREIGN KEY (ServicesID) REFERENCES [Services](ServicesID) ON DELETE CASCADE ON UPDATE CASCADE,

);