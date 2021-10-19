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







select * from Person 
select * from PMovie
select * from Movie
select * from Categorie

--insert into Categorie([Name]) values ('Science Fiction')

--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 1, 2)

--insert into Person (FirstName, LastName, PictureUrl) values ('James', 'Cammeron','https:///www.google.com/imgres?imgurl=https%3A%2F%2Fwww.babelio.com%2Fusers%2FAVT_James-Cameron_7491.jpeg&imgrefurl=https%3A%2F%2Fwww.babelio.com%2Fauteur%2FJames-Cameron%2F69961&tbnid=z3rr40q_fDQTEM&vet=12ahUKEwie9dnIl9bzAhUN9BoKHV-rCFkQMygDegUIARCXAQ..i&docid=opHysgoJTHIXWM&w=310&h=221&itg=1&q=james%20cameron&ved=2ahUKEwie9dnIl9bzAhUN9BoKHV-rCFkQMygDegUIARCXAQ')
--insert into Person (FirstName, LastName, PictureUrl) values ('Arnold', 'Schwarzenegger', 'https:///www.google.com/imgres?imgurl=https%3A%2F%2Fresize-parismatch.lanmedia.fr%2Fr%2F940%2C628%2Ccenter-middle%2Fimg%2Fvar%2Fnews%2Fstorage%2Fimages%2Fparis-match%2Fculture%2Fcinema%2Farnold-schwarzenegger-ses-films-et-sa-carriere-en-photos-769530%2F8135892-1-fre-FR%2FIl-etait-une-fois-Arnold-Schwarzenegger.jpg&imgrefurl=https%3A%2F%2Fwww.parismatch.com%2FCulture%2FCinema%2FArnold-Schwarzenegger-ses-films-et-sa-carriere-en-photos-769530&tbnid=X02u-HodNAG-qM&vet=12ahUKEwif2KzZl9bzAhUO0xoKHSziB8MQMygCegUIARDRAQ..i&docid=QmMj0KqmCAPCFM&w=940&h=628&q=arnold%20schwarzenegger&ved=2ahUKEwif2KzZl9bzAhUO0xoKHSziB8MQMygCegUIARDRAQ')

--insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
--values ('Terminator', '01-01-1984', 'Terminator (The Terminator) est un film de science-fiction américain réalisé par James Cameron, sorti en 1984, avec, dans les rôles principaux, Arnold Schwarzenegger, Michael Biehn et Linda Hamilton.'
--,'???', 11, 11, 1,'the best')


--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 4, 14)


--select * from Person 
--select * from PMovie
--select * from Movie
--select * from Categorie

--insert into Categorie([Name]) values ('Science Fiction')

--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 1, 2)

--insert into Person (FirstName, LastName, PictureUrl) values ('James', 'Cammeron','https:///www.google.com/imgres?imgurl=https%3A%2F%2Fwww.babelio.com%2Fusers%2FAVT_James-Cameron_7491.jpeg&imgrefurl=https%3A%2F%2Fwww.babelio.com%2Fauteur%2FJames-Cameron%2F69961&tbnid=z3rr40q_fDQTEM&vet=12ahUKEwie9dnIl9bzAhUN9BoKHV-rCFkQMygDegUIARCXAQ..i&docid=opHysgoJTHIXWM&w=310&h=221&itg=1&q=james%20cameron&ved=2ahUKEwie9dnIl9bzAhUN9BoKHV-rCFkQMygDegUIARCXAQ')
--insert into Person (FirstName, LastName, PictureUrl) values ('Arnold', 'Schwarzenegger', 'https:///www.google.com/imgres?imgurl=https%3A%2F%2Fresize-parismatch.lanmedia.fr%2Fr%2F940%2C628%2Ccenter-middle%2Fimg%2Fvar%2Fnews%2Fstorage%2Fimages%2Fparis-match%2Fculture%2Fcinema%2Farnold-schwarzenegger-ses-films-et-sa-carriere-en-photos-769530%2F8135892-1-fre-FR%2FIl-etait-une-fois-Arnold-Schwarzenegger.jpg&imgrefurl=https%3A%2F%2Fwww.parismatch.com%2FCulture%2FCinema%2FArnold-Schwarzenegger-ses-films-et-sa-carriere-en-photos-769530&tbnid=X02u-HodNAG-qM&vet=12ahUKEwif2KzZl9bzAhUO0xoKHSziB8MQMygCegUIARDRAQ..i&docid=QmMj0KqmCAPCFM&w=940&h=628&q=arnold%20schwarzenegger&ved=2ahUKEwif2KzZl9bzAhUO0xoKHSziB8MQMygCegUIARDRAQ')

--insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
--values ('Terminator', '01-01-1984', 'Terminator (The Terminator) est un film de science-fiction américain réalisé par James Cameron, sorti en 1984, avec, dans les rôles principaux, Arnold Schwarzenegger, Michael Biehn et Linda Hamilton.'
--,'???', 11, 11, 1,'the best')


--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 4, 14)


--select * from Person 
--select * from PMovie
--select * from Movie
--select * from Categorie

--select m.Title, m.DateSortie, m.ImageMovie, p.FirstName + ' ' + p.LastName as realisateur,(select  p.FirstName + ' ' + p.LastName
--from Movie m 
--join Person p on m.ScenaristeId = p.IdPerson where IdMovie = 4) as Scenariste
--from Movie m
--join Categorie c on c.IdCategorie = m.CategorieId
--join Person p on p.IdPerson = m.RealisatorId where IdMovie = 4
 

-- select p.FirstName + ' ' + p.LastName as personne, [Role]
-- from Movie m 
-- join PMovie pm on m.IdMovie = pm.MovieId 
-- join Person p on p.IdPerson = pm.PersonId
-- where m.IdMovie = 4