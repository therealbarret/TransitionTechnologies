CREATE TABLE Addons (
 AddonID int NOT NULL IDENTITY(1,1),
 Addon varchar(50) NOT NULL,
 Price smallmoney,
 CONSTRAINT PK_AddonID PRIMARY KEY (AddonID),
);