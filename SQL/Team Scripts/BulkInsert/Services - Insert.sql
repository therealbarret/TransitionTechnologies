Bulk Insert Demo_Database.dbo.[Services]
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\Services.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )