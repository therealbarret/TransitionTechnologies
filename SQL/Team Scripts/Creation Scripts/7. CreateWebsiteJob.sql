CREATE TABLE WebsiteJob (
 WebsiteJobID int NOT NULL IDENTITY(1,1),
 WebsiteJob varchar(50) NOT NULL,
 Price smallmoney NOT NULL,
 CONSTRAINT PK_WebsiteJob PRIMARY KEY (WebsiteJobID),
);