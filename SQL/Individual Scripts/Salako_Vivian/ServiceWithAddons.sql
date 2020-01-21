SELECT Service2Addon.ServiceID, Addons.Addon, Addons.Price, Service2Addon.Quantity
FROM Addons INNER JOIN Service2Addon ON Addons.AddonID = Service2Addon.AddonID;
