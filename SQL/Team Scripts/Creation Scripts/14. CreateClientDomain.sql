CREATE TABLE ClientDomain (
 ClientDomainID int NOT NULL IDENTITY(1,1),
 ClientDomain varchar(50) NOT NULL,
 WebmasterLoginID int NOT NULL,
 CONSTRAINT PK_ClientDomain PRIMARY KEY (ClientDomainID),
 CONSTRAINT FK_WebmasterLogin FOREIGN KEY (WebmasterLoginID) REFERENCES WebmasterLogin(WebmasterLoginID) ON DELETE CASCADE ON UPDATE CASCADE,
);