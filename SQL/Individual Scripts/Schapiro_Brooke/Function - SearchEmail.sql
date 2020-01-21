SELECT 
ClientDomain, 
Username, 
[Password] 
FROM ClientDomain
INNER JOIN
WebmasterLogin ON WebmasterLogin.WebmasterLoginID = ClientDomain.WebmasterLoginID
WHERE ClientDomain.ClientDomainID = dbo.SearchEmail('tlowry@website.com')