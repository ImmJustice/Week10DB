CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT NOT NULL,
	[LogDateTime] DateTime NOT NULL,
	[RecAcct] Int,
	[Amount] Money NOT NULL,
	Constraint Log_PK Primary Key (OrigAcct,LogDateTime),
	Constraint OrigAcct_FK Foreign Key(OrigAcct) References Account(AccountNo),
	Constraint RecAcct_FK Foreign Key(RecAcct) References Account(AccountNo)
)
