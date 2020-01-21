SELECT  
CONCAT(FirstName, ' ', LastName) AS 'Name', 
CONCAT(StreetAddress, ', ', City, ', ', [State], ' ', 
ZipCode.ZipCodeID) AS 'Address', 
CONCAT('(', AreaCodeID, ')', ' ', Number) AS 'Phone Number',  
email, 
[Services_Description] AS 'Service', 
WebsiteJob AS 'Job Description', 
Balance, 
Deposit, 
Paid, 
PaidToDate, 
Service_Date, CASE WHEN TempClient = 1 THEN 'Yes' ELSE 'No' END AS 'Temp Client' 
FROM WebsiteJob
INNER JOIN [Services] ON [Services].WebsiteJobID = WebsiteJob.WebsiteJobID
INNER JOIN Balance ON Balance.BalanceID = [Services].BalanceID
INNER JOIN Paid ON Paid.PaidID = [Services].PaidID
INNER JOIN Client ON Client.ClientID = [Services].PaidID
INNER JOIN [Address] ON [Address].AddressID = Client.AddressID
INNER JOIN ZipCode ON ZipCode.ZipCodeID = [Address].ZipCodeID
INNER JOIN PhoneNumber ON PhoneNumber.PhoneNumberID = Client.PhoneNumberID
INNER JOIN ClientDomain ON ClientDomain.ClientDomainID = Client.ClientDomainID

