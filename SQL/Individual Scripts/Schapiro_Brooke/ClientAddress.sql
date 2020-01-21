SELECT 
StreetAddress, 
City,
[State],
ZipCode.ZipCodeID AS 'Zip Code' 
FROM [Address]
INNER JOIN ZipCode ON ZipCode.ZipCodeID = [Address].ZipCodeID