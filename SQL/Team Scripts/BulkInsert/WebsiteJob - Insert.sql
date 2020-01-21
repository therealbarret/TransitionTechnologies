Bulk Insert Demo_Database.dbo.WebsiteJob
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\WebsiteJob.txt'
 With (
  Batchsize = 20,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )