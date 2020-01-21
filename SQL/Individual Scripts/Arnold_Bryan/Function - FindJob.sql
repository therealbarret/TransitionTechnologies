SELECT [Services].ServicesID, [Services].ClientID, [Services].Service_Date, [Services].[Services_Description],
 WebsiteJob.WebsiteJob, WebsiteJob.Price
FROM WebsiteJob INNER JOIN [Services] ON WebsiteJob.WebsiteJobID = [Services].WebsiteJobID
WHERE WebsiteJob.WebsiteJobID = dbo.FindJob('Auction Website');