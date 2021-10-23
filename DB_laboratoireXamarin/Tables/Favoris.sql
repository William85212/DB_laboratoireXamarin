CREATE TABLE [dbo].[Favoris]
(
	[IdUser] INT NULL , 
    [IdMovie] INT NULL, 
    CONSTRAINT [FK_Favoris_ToTable] FOREIGN KEY ([IdUser]) REFERENCES [User]([IdUser]), 
    CONSTRAINT [FK_Favoris_ToTable_1] FOREIGN KEY ([IdMovie]) REFERENCES [Movie]([IdMovie])
)
