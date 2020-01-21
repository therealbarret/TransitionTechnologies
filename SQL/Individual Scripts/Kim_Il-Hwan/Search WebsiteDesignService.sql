SELECT CONCAT(sub8.FirstName, ' ', sub8.LastName) AS 'Name', CONCAT(sub8.StreetAddress, ', ', sub8.City, ', ', sub8.[State], ' ', sub8.ZipCodeID) AS 'Address', 
CONCAT('(', sub8.AreaCodeID, ')', ' ', Number) AS 'Phone Number', sub8.ClientDomain AS 'Client Domain', 
sub8.email, sub8.[Services_Description] AS 'Service', WebsiteJob AS 'Job Description', sub8.Balance, sub8.Deposit, sub8.Paid, 
PaidToDate, sub8.Service_Date, CASE WHEN sub8.TempClient = 1 THEN 'Yes' ELSE 'No' END AS 'Temp Client' FROM WebsiteJob
INNER JOIN (
SELECT sub7.ClientID, sub7.FirstName, sub7.LastName, sub7.StreetAddress, sub7.City, sub7.[State], sub7.ZipCodeID, AreaCodeID, Number, ClientDomain.ClientDomain, 
sub7.email,sub7.ServicesID, sub7.[Services_Description], sub7.WebsiteJobID, sub7.Balance, sub7.Deposit, sub7.Paid, 
PaidToDate, sub7.Service_Date, sub7.TempClient FROM ClientDomain
INNER JOIN (
SELECT sub6.ClientID, sub6.FirstName, sub6.LastName, sub6.StreetAddress, sub6.City, sub6.[State], sub6.ZipCodeID, AreaCodeID, Number, sub6.ClientDomainID, sub6.email, 
sub6.ServicesID, sub6.[Services_Description], sub6.WebsiteJobID, sub6.Balance, sub6.Deposit, sub6.Paid, 
PaidToDate, sub6.Service_Date, sub6.TempClient FROM PhoneNumber
INNER JOIN (
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
ON sub5.ZipCodeID =ZipCode.ZipCodeID ) sub6
ON sub6.PhoneNumberID = Phonenumber.PhoneNumberID ) sub7
ON sub7.ClientDomainID = ClientDomain.ClientDomainID ) sub8
ON sub8.WebsiteJobID = WebsiteJob.WebsiteJobID
WHERE sub8.FirstName = 'Mindi' OR sub8.LastName = 'Zoll';
