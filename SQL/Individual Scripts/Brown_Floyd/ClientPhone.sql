SELECT 
AreaCode.AreaCodeID, 
Number FROM PhoneNumber
INNER JOIN AreaCode ON AreaCode.AreaCodeID = PhoneNumber.AreaCodeID;