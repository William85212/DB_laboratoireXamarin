﻿/*
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









--insert into Categorie([Name]) values ('Science Fiction')
--insert into Categorie([Name]) values ('Drame Romantique')


--insert into Person (FirstName, LastName, PictureUrl) values ('James', 'Cammeron','https://www.babelio.com/users/AVT_James-Cameron_7491.jpeg')
--insert into Person (FirstName, LastName, PictureUrl) values ('Arnold', 'Schwarzenegger', 'https:///www.google.com/imgres?imgurl=https%3A%2F%2Fresize-parismatch.lanmedia.fr%2Fr%2F940%2C628%2Ccenter-middle%2Fimg%2Fvar%2Fnews%2Fstorage%2Fimages%2Fparis-match%2Fculture%2Fcinema%2Farnold-schwarzenegger-ses-films-et-sa-carriere-en-photos-769530%2F8135892-1-fre-FR%2FIl-etait-une-fois-Arnold-Schwarzenegger.jpg&imgrefurl=https%3A%2F%2Fwww.parismatch.com%2FCulture%2FCinema%2FArnold-Schwarzenegger-ses-films-et-sa-carriere-en-photos-769530&tbnid=X02u-HodNAG-qM&vet=12ahUKEwif2KzZl9bzAhUO0xoKHSziB8MQMygCegUIARDRAQ..i&docid=QmMj0KqmCAPCFM&w=940&h=628&q=arnold%20schwarzenegger&ved=2ahUKEwif2KzZl9bzAhUO0xoKHSziB8MQMygCegUIARDRAQ')
--insert into Person (FirstName, LastName, PictureUrl) values ('Leonardo', 'DiCaprio', '')
--insert into Person (FirstName, LastName, PictureUrl) values ('Kate', 'Winsley', '??')




--insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
--values ('Terminator', '01-01-1984', 'Terminator (The Terminator) est un film de science-fiction américain réalisé par James Cameron, sorti en 1984, avec, dans les rôles principaux, Arnold Schwarzenegger, Michael Biehn et Linda Hamilton.'
--,'https://m.media-amazon.com/images/I/A1wiVBc2VLL._AC_SL1500_.jpg', 1, 1, 1,'the best')

--insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
--values ('Titanic', '01-01-1997', 'Titanic est un film dramatique américain écrit, produit et réalisé par James Cameron, sorti en 1997.
--Intégrant à la fois des aspects historiques et fictifs, le film est basé sur le récit du naufrage du RMS Titanic et met en vedette Leonardo DiCaprio et Kate Winslet.'
--,'https::µ//www.google.com/url?sa=i&url=https%3A%2F%2Fwww.20minutes.fr%2Fculture%2F2198771-20180109-titanic-20-ans-apres-fin-film-toujours-remise-question-fans-place-deux-foutue-planche&psig=AOvVaw1F7CTEAzjBJZbZxNlaZqVB&ust=1634765572409000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKj3_ry21_MCFQAAAAAdAAAAABAD', 1, 1, 2,'rose se prend un cartouche')

--insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 1, 2)
--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 1, 1)
--insert into PMovie([Role], MovieId, PersonId) values ('Jack', 2, 3)
--insert into PMovie([Role], MovieId, PersonId) values ('Rose', 2, 4)
--insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 2, 1)

--exec _addUser 'wil85212@gmail.com', 'william_hardy';
--exec _addUser 'hugo@gmail.com', 'hugo_hardy';
--exec _addUser 'fucanClaudy@gmail.com', 'claudy_faucan';