SELECT [Services].ServicesID, [Services].[Services_Description], Addons.Addon, Addons.Price, Service2Addon.Quantity
FROM Addons INNER JOIN ([Services] INNER JOIN Service2Addon ON [Services].ServicesID = Service2Addon.ServiceID) 
ON Addons.AddonID = Service2Addon.AddonID 
WHERE Addons.AddonID = dbo.FindAddon('SEO')
ORDER BY ServicesID ;