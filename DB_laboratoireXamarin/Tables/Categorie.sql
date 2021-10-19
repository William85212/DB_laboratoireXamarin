CREATE TABLE [dbo].[Categorie]
(
	[IdCategorie] INT NOT NULL identity , 
    [Name] NVARCHAR(MAX) NOT NULL, 
    CONSTRAINT [PK_Categorie] PRIMARY KEY ([IdCategorie])
)
