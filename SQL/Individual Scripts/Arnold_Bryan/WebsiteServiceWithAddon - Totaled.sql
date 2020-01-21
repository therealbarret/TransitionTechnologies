SELECT [Services].ServicesID, [Services].[Services_Description] AS 'Service', SUM(Addons.Price * Service2Addon.Quantity) AS 'AddonTotal'
FROM Addons INNER JOIN ([Services] INNER JOIN Service2Addon ON [Services].ServicesID = Service2Addon.ServiceID) 
ON Addons.AddonID = Service2Addon.AddonID 
GROUP BY [Services].ServicesID, [Services].Services_Description
ORDER BY ServicesID;
