/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


If '$(LoadData)' = 'true'

Begin

Delete From Log
Delete From Account

--dd mon yyyy hh:mi:ss:mmm

Insert Into Account(AccountNo,Fname,Lname,CreditLimit,Balance) Values
(101,'Lucais','Smith',-$10,$200),
(102,'Nicholas','Ainsworth',-$15,$321),
(103,'Myles','Bitch',-$1,$3),
(104,'Swiggty','Swoo',-$100,$2300)

Insert Into Log(OrigAcct,LogDateTime,RecAcct,Amount) Values
(101,Convert(DateTime,'01 Jan 2001 06:10:13:000',113),102,$30),
(104,Convert(DateTime,'18 Feb 2003 07:31:18:000',113),103,$52),
(103,Convert(DateTime,'16 Nov 1998 23:45:16:000',113),102,$117)


End;