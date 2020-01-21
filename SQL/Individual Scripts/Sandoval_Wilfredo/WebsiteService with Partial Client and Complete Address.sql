SELECT sub5.ClientID, sub5.FirstName, sub5.LastName, sub5.StreetAddress, City, [State], ZipCode.ZipCodeID, sub5.PhoneNumberID, sub5.ClientDomainID, sub5.email, 
sub5.ServicesID, sub5.[Services_Description], sub5.WebsiteJobID, sub5.Balance, sub5.Deposit, sub5.Paid, 
PaidToDate, sub5.Service_Date, sub5.TempClient FROM ZipCode
INNER JOIN (
SELECT sub4.ClientID, sub4.FirstName, sub4.LastName, StreetAddress, ZipCodeID,  sub4.PhoneNumberID, sub4.ClientDomainID, sub4.email, 
sub4.ServicesID, sub4.[Services_Description], sub4.WebsiteJobID, 
sub4.Balance, sub4.Deposit, sub4.Paid, PaidToDate, sub4.Service_Date, sub4.TempClient FROM [Address]
INNER JOIN (
SELECT Client.ClientID, FirstName, LastName, AddressID, PhoneNumberID, ClientDomainID, email, sub3.ServicesID, sub3.[Services_Description], sub3.WebsiteJobID, 
sub3.Balance, sub3.Deposit, Paid, PaidToDate, sub3.Service_Date, TempClient
FROM Client
INNER JOIN (
SELECT sub2.ServicesID, sub2.[Services_Description], sub2.ClientID, sub2.WebsiteJobID, sub2.Balance, sub2.Deposit, Paid, PaidToDate, sub2.Service_Date FROM Paid
INNER JOIN (
SELECT sub.ServicesID, sub.[Services_Description], sub.ClientID, sub.WebsiteJobID, Balance, Deposit, PaidID, Service_Date  FROM Balance
INNER JOIN (
SELECT ServicesID, [Services_Description], ClientID, WebsiteJobID, BalanceID, PaidID, Service_Date 
FROM [Services] WHERE [Services].WebsiteJobID IS NOT NULL ) sub ON sub.BalanceID = [Balance].BalanceID ) sub2
ON sub2.PaidID = Paid.PaidID ) sub3 
ON sub3.ClientID = Client.ClientID ) sub4
ON sub4.AddressID = [Address].AddressID ) sub5
ON sub5.ZipCodeID =ZipCode.ZipCodeID