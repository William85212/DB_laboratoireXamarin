CREATE TABLE [dbo].[Salaison]
(
	[UserId] INT NOT NULL , 
    [salt] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [FK_Salaison_User] FOREIGN KEY ([UserId]) REFERENCES [User]([IdUser])
)
