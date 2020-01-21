Bulk Insert Demo_Database.dbo.PhoneNumber
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\PhoneNumber.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )