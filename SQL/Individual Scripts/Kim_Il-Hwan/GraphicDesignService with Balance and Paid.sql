SELECT sub2.ServicesID, sub2.[Services_Description], sub2.ClientID, sub2.GraphicDesignJobID, sub2.Balance, sub2.Deposit, Paid, PaidToDate, sub2.Service_Date FROM Paid
INNER JOIN (
SELECT sub.ServicesID, sub.[Services_Description], sub.ClientID, sub.GraphicDesignJobID, Balance, Deposit, PaidID, Service_Date  FROM Balance
INNER JOIN (
SELECT ServicesID, [Services_Description], ClientID, GraphicDesignJobID, BalanceID, PaidID, Service_Date 
FROM [Services] WHERE [Services].GraphicDesignJobID IS NOT NULL ) sub ON sub.BalanceID = [Balance].BalanceID ) sub2
ON sub2.PaidID = Paid.PaidID

