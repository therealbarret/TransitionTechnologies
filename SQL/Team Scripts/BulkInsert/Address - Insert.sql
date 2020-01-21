Bulk Insert Demo_Database.dbo.[Address]
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\Address.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )