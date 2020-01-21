SELECT 
ClientDomain, 
Username, 
[Password] 
FROM ClientDomain
INNER JOIN
WebmasterLogin ON WebmasterLogin.WebmasterLoginID = ClientDomain.WebmasterLoginID
WHERE ClientDomainID = dbo.FindDomain('myspace.com')