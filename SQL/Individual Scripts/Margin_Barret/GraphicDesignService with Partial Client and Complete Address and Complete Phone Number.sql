SELECT sub6.ClientID, sub6.FirstName, sub6.LastName, sub6.StreetAddress, sub6.City, sub6.[State], sub6.ZipCodeID, AreaCodeID, Number, sub6.ClientDomainID, sub6.email, 
sub6.ServicesID, sub6.[Services_Description], sub6.GraphicDesignJobID, sub6.Balance, sub6.Deposit, sub6.Paid, 
PaidToDate, sub6.Service_Date, sub6.TempClient FROM PhoneNumber
INNER JOIN (
SELECT sub5.ClientID, sub5.FirstName, sub5.LastName, sub5.StreetAddress, City, [State], ZipCode.ZipCodeID, sub5.PhoneNumberID, sub5.ClientDomainID, sub5.email, 
sub5.ServicesID, sub5.[Services_Description], sub5.GraphicDesignJobID, sub5.Balance, sub5.Deposit, sub5.Paid, 
PaidToDate, sub5.Service_Date, sub5.TempClient FROM ZipCode
INNER JOIN (
SELECT sub4.ClientID, sub4.FirstName, sub4.LastName, StreetAddress, ZipCodeID,  sub4.PhoneNumberID, sub4.ClientDomainID, sub4.email, 
sub4.ServicesID, sub4.[Services_Description], sub4.GraphicDesignJobID, 
sub4.Balance, sub4.Deposit, sub4.Paid, PaidToDate, sub4.Service_Date, sub4.TempClient FROM [Address]
INNER JOIN (
SELECT Client.ClientID, FirstName, LastName, AddressID, PhoneNumberID, ClientDomainID, email, sub3.ServicesID, sub3.[Services_Description], sub3.GraphicDesignJobID, 
sub3.Balance, sub3.Deposit, Paid, PaidToDate, sub3.Service_Date, TempClient
FROM Client
INNER JOIN (
SELECT sub2.ServicesID, sub2.[Services_Description], sub2.ClientID, sub2.GraphicDesignJobID, sub2.Balance, sub2.Deposit, Paid, PaidToDate, sub2.Service_Date FROM Paid
INNER JOIN (
SELECT sub.ServicesID, sub.[Services_Description], sub.ClientID, sub.GraphicDesignJobID, Balance, Deposit, PaidID, Service_Date  FROM Balance
INNER JOIN (
SELECT ServicesID, [Services_Description], ClientID, GraphicDesignJobID, BalanceID, PaidID, Service_Date 
FROM [Services] WHERE [Services].GraphicDesignJobID IS NOT NULL ) sub ON sub.BalanceID = [Balance].BalanceID ) sub2
ON sub2.PaidID = Paid.PaidID ) sub3 
ON sub3.ClientID = Client.ClientID ) sub4
ON sub4.AddressID = [Address].AddressID ) sub5
ON sub5.ZipCodeID =ZipCode.ZipCodeID ) sub6
ON sub6.PhoneNumberID = Phonenumber.PhoneNumberID