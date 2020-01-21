SELECT  
FirstName AS 'First Name', 
LastName AS 'Last Name', 
StreetAddress AS 'Street Address', 
City,
[State], 
ZipCode.ZipCodeID,  
CONCAT('(', AreaCode.AreaCodeID, ')', ' ', Number) AS 'Phone Number', 
Email, CASE WHEN TempClient = 1 THEN 'Yes' ELSE 'No' END AS 'Temp Client' FROM PhoneNumber
INNER JOIN AreaCode ON AreaCode.AreaCodeID = PhoneNumber.AreaCodeID
INNER JOIN Client ON Client.ClientID = PhoneNumber.PhoneNumberID
INNER JOIN [Address] ON [Address].AddressID = Client.AddressID
INNER JOIN ZipCode ON ZipCode.ZipCodeID = [Address].ZipCodeID

