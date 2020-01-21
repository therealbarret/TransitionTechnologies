SELECT Client.ClientID, FirstName, LastName, AddressID, PhoneNumberID, ClientDomainID, email, sub3.ServicesID, sub3.[Services_Description], sub3.WebsiteJobID, 
sub3.Balance, sub3.Deposit, Paid, PaidToDate, sub3.Service_Date, TempClient
FROM Client
INNER JOIN (
SELECT sub2.ServicesID, sub2.[Services_Description], sub2.ClientID, sub2.WebsiteJobID, sub2.Balance, sub2.Deposit, Paid, PaidToDate, sub2.Service_Date FROM Paid
INNER JOIN (
SELECT sub.ServicesID, sub.[Services_Description], sub.ClientID, sub.WebsiteJobID, Balance, Deposit, PaidID, Service_Date  FROM Balance
INNER JOIN (
SELECT ServicesID, [Services_Description], ClientID, WebsiteJobID, BalanceID, PaidID, Service_Date 
FROM [Services] WHERE [Services].WebsiteJobID IS NOT NULL ) sub ON sub.BalanceID = [Balance].BalanceID ) sub2
ON sub2.PaidID = Paid.PaidID ) sub3 
ON sub3.ClientID = Client.ClientID;
