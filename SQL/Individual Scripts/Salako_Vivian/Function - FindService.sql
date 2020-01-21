SELECT [Services].ServicesID, [Services].[Services_Description], Addons.Addon, Addons.Price, Service2Addon.Quantity
FROM Addons INNER JOIN ([Services] INNER JOIN Service2Addon ON [Services].ServicesID = Service2Addon.ServiceID) 
ON Addons.AddonID = Service2Addon.AddonID 
WHERE [Services].ServicesID = dbo.FindService('Family Website') ORDER BY ServicesID;