CREATE TABLE [dbo].[PMovie]
(
	[IdPMovie] INT NOT NULL identity, 
    [MovieId] INT NOT NULL, 
    [PersonId] INT NOT NULL, 
    [Role] NVARCHAR(MAX) NOT NULL, 
    CONSTRAINT [FK_PMovie_ToTable] FOREIGN KEY ([MovieId]) REFERENCES [Movie]([IdMovie]), 
    CONSTRAINT [FK_PMovie_ToTable_1] FOREIGN KEY ([PersonId]) REFERENCES [Person]([IdPerson])
)
