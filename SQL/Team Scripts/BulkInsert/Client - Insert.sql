Bulk Insert Demo_Database.dbo.Client
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\Client.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )