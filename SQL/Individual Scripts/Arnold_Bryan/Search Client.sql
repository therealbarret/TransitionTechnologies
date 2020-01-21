SELECT  FirstName AS 'First Name', LastName AS 'Last Name', sub3.StreetAddress AS 'Street Address', sub3.City, sub3.[State], sub3.[Zip Code],  CONCAT(sub.AreaCodeID, '-', Number) AS 'Phone Number', Email, CASE WHEN TempClient = 1 THEN 'Yes' ELSE 'No' END AS 'Temp Client' FROM PhoneNumber
INNER JOIN ( SELECT AreaCodeID, Region FROM AreaCode ) sub
ON sub.AreaCodeID = PhoneNumber.AreaCodeID
INNER JOIN (
SELECT ClientID, FirstName, LastName, sub2.StreetAddress, sub2.City, sub2.[State], sub2.[Zip Code], PhoneNumberID, ClientDomainID, Email, TempClient FROM
Client
INNER JOIN (
SELECT AddressID, StreetAddress, sub.City, sub.[State], sub.ZipCodeID AS 'Zip Code' FROM [Address]
INNER JOIN (SELECT ZipCodeID, City, [State], County FROM ZipCode) sub
ON sub.ZipCodeID = [Address].ZipCodeID ) sub2
ON sub2.AddressID = Client.AddressID ) sub3
ON sub3.ClientID = PhoneNumber.PhoneNumberID 
WHERE FirstName LIKE 'v%' 