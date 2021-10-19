CREATE TABLE [dbo].[Movie]
(
	[IdMovie] INT NOT NULL identity, 
    [Title] NVARCHAR(MAX) NOT NULL, 
    [DateSortie] DATETIME2 NOT NULL, 
    [Resume] NVARCHAR(MAX) NOT NULL, 
    [ImageMovie] NVARCHAR(MAX) NOT NULL, 
    [RealisatorId] INT NOT NULL, 
    [ScenaristeId] INT NOT NULL, 
    [CategorieId] INT NOT NULL, 
    [PersonnalComment] NVARCHAR(MAX) NOT NULL, 
    CONSTRAINT [PK_Movie] PRIMARY KEY ([IdMovie]), 
    CONSTRAINT [FK_Movie_Categorie] FOREIGN KEY ([CategorieId]) REFERENCES [Categorie]([IdCategorie]), 
    CONSTRAINT [FK_Movie_PersonScenarit] FOREIGN KEY ([ScenaristeId]) REFERENCES [Person]([IdPerson]), 
    CONSTRAINT [FK_Movie_PersonRealisator] FOREIGN KEY ([RealisatorId]) REFERENCES [Person]([IdPerson])
)
