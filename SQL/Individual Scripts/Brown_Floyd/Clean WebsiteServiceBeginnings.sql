SELECT
	FirstName,
	LastName,
	Services_Description,
	BalanceID,
	PaidID,
	Service_Date
FROM
	Client
INNER JOIN
	[Services] ON [Services].ClientID = Client.ClientID 