Bulk Insert Demo_Database.dbo.AreaCode
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\AreaCode.txt'
 With (
  Batchsize = 332,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )