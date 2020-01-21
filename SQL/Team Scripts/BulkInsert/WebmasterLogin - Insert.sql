Bulk Insert Demo_Database.dbo.WebmasterLogin
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\WebmasterLogin.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )