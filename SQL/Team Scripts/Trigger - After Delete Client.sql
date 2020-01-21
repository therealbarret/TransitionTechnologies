CREATE TRIGGER trgAfterDelete ON [dbo].[Client] 
AFTER DELETE
AS
	declare @clientID int;
	declare @fname varchar(25);
	declare @lname varchar(25);
	declare @address int;
	declare @phone int;
	declare @domain int;
	declare @email varchar(50);
	declare @temp bit;
	declare @audit_action varchar(100);

	select @clientID=d.ClientID from deleted d;	
	select @fname=d.FirstName from deleted d;	
	select @lname=d.LastName from deleted d;	
	select @address=d.AddressID from deleted d;	
	select @phone=d.PhoneNumberID from deleted d;	
	select @domain=d.ClientDomainID from deleted d;	
	select @email=d.Email from deleted d;
	select @temp=d.TempClient from deleted d;	
	set @audit_action='Deleted -- After Delete Trigger.';

	insert into Client_Audit
(ClientID, FirstName, LastName, AddressID, PhoneNumberID, ClientDomainID , TempClient, Audit_Action, Audit_Timestamp) 
	values(@clientID,@fname,@lname,@address,@phone,@domain,@temp,@audit_action,getdate());

	PRINT 'AFTER DELETE TRIGGER fired.'
GO

