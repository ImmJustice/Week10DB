CREATE TABLE [dbo].[Account]
(
	[AccountNo] INT NOT NULL,
	[Fname] NVARCHAR(50) Not Null,
	[Lname] NVARCHAR(50) Not Null,
	[CreditLimit] Money,
	[Balance] Money,
	Constraint Account_PK Primary Key(AccountNo),
	Constraint Account_Fname_Lname Unique(Fname,Lname),
	Constraint CHK_Credit Check(CreditLimit < 0),
	Constraint CHK_Balance Check (Balance > CreditLimit)


	
)
