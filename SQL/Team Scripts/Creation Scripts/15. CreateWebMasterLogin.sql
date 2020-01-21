CREATE TABLE WebmasterLogin (
 WebmasterLoginID int NOT NULL IDENTITY(1,1),
 Username varchar(25) NOT NULL,
 [Password] varchar(25) NOT NULL,
 CONSTRAINT PK_WebmasterLogin PRIMARY KEY (WebmasterLoginID),
);