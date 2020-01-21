Bulk Insert Demo_Database.dbo.GraphicDesignJob
 From 'C:\Users\bharnold\Documents\SQL Server Management Studio\Step 2 - BulkInsert\GraphicDesignJob.txt'
 With (
  Batchsize = 21,
  Datafiletype = 'Char',
  Fieldterminator = ';',
  Rowterminator = ','
  )