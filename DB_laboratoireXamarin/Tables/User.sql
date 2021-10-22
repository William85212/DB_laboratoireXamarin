CREATE TABLE [dbo].[User]
(
	[IdUser] INT NOT NULL identity, 
    [Email] NVARCHAR(200) NOT NULL, 
    [Password] VARBINARY(64) NOT NULL, 
    [TokenForgot] NVARCHAR(MAX) NULL, 
    CONSTRAINT [PK_User] PRIMARY KEY ([IdUser])
)
