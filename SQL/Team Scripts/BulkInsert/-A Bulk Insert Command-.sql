Bulk Insert Demo_Database.dbo.Addons
 From 'C:\Users\bryan\Documents\SQL Server Management Studio\Step 2 - BulkInsert\Addons.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )