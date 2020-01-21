SELECT FirstName, LastName, sub.Services_Description, sub.GraphicDesignJobID, sub.BalanceID, sub.PaidID, sub.Service_Date FROM Client
INNER JOIN (
SELECT ServicesID, [Services_Description], ClientID, GraphicDesignJobID, BalanceID, PaidID, Service_Date 
FROM [Services] WHERE [Services].GraphicDesignJobID IS NOT NULL 
) sub ON sub.ClientID = Client.ClientID