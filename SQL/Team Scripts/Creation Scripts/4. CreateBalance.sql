CREATE TABLE Balance (
 BalanceID int NOT NULL IDENTITY(1,1),
 Balance smallmoney NOT NULL,
 Deposit smallmoney,
 CONSTRAINT PK_Balance PRIMARY KEY (BalanceID),

);