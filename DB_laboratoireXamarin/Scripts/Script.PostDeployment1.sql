/*
Modèle de script de post-déploiement							
--------------------------------------------------------------------------------------
 Ce fichier contient des instructions SQL qui seront ajoutées au script de compilation.		
 Utilisez la syntaxe SQLCMD pour inclure un fichier dans le script de post-déploiement.			
 Exemple :      :r .\monfichier.sql								
 Utilisez la syntaxe SQLCMD pour référencer une variable dans le script de post-déploiement.		
 Exemple :      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--insert into Categorie([Name]) values ('Science Fiction')

--insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
--values ('Terminator', '01-01-1984', 'Terminator (The Terminator) est un film de science-fiction américain réalisé par James Cameron, sorti en 1984, avec, dans les rôles principaux, Arnold Schwarzenegger, Michael Biehn et Linda Hamilton.'
--,'???', 1, 1, 1,'the best')


--insert into Person (FirstName, LastName) values ('James', 'Cammeron')
--insert into Person (FirstName, LastName) values ('Arnold', 'Schwarzenegger')

--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 1, 2)
