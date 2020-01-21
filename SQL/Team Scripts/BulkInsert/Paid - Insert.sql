Bulk Insert Demo_Database.dbo.Paid
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\Paid.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )