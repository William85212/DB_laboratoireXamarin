CREATE TABLE [dbo].[Person]
(
	[IdPerson] INT NOT NULL identity, 
    [LastName] NVARCHAR(MAX) NOT NULL, 
    [FirstName] NVARCHAR(MAX) NOT NULL, 
    [PictureUrl] NVARCHAR(MAX) NOT NULL, 
    CONSTRAINT [PK_Person] PRIMARY KEY ([IdPerson])
)
