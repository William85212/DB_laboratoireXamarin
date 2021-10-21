CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL , 
    [Email] NVARCHAR(200) NOT NULL, 
    [Password] VARBINARY(64) NOT NULL, 
    CONSTRAINT [PK_User] PRIMARY KEY ([Id])
)
