Bulk Insert Demo_Database.dbo.ClientDomain
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\ClientDomain.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )