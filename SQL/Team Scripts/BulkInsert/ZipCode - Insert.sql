Bulk Insert Demo_Database.dbo.ZipCode
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\ZipCode.txt'
 With (
  Batchsize = 40933,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )