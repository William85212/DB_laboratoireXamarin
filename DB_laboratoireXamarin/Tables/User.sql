CREATE TABLE [dbo].[User]
(
	[IdUser] INT NOT NULL identity, 
    [Email] NVARCHAR(200) unique NOT NULL, 
    [Password] VARBINARY(64) NOT NULL, 
    [TokenForgot] NVARCHAR(200) NULL, 
    CONSTRAINT [PK_User] PRIMARY KEY ([IdUser])
)
