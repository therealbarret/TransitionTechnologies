SELECT FirstName, LastName, sub.Services_Description, sub.WebsiteJobID, sub.BalanceID, sub.PaidID, sub.Service_Date FROM Client
INNER JOIN (
SELECT ServicesID, [Services_Description], ClientID, WebsiteJobID, BalanceID, PaidID, Service_Date 
FROM [Services] WHERE [Services].WebsiteJobID IS NOT NULL 

) sub ON sub.ClientID = Client.ClientID