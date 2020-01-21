SELECT [Services].ServicesID, [Services].[Services_Description] AS 'Service', Addons.Addon, (Addons.Price * Service2Addon.Quantity) AS 'Addon Total'
FROM Addons INNER JOIN ([Services] INNER JOIN Service2Addon ON [Services].ServicesID = Service2Addon.ServiceID) 
ON Addons.AddonID = Service2Addon.AddonID ORDER BY ServicesID;