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
--values ('Titanic', '01-01-1997', 'Titanic est un film dramatique américain écrit, produit et réalisé par James Cameron, sorti en 1997. Intégrant à la fois des aspects historiques et fictifs, le film est basé sur le récit du naufrage du RMS Titanic et met en vedette Leonardo DiCaprio et Kate Winslet.'
--, '' , 1, 1, 2,'rose se prend un cartouche')

--insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 1, 2)
--insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 1, 1)
--insert into PMovie([Role], MovieId, PersonId) values ('Jack', 2, 3)
--insert into PMovie([Role], MovieId, PersonId) values ('Rose', 2, 4)
--insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 2, 1)

--exec _addUser 'wil85212@gmail.com', 'william_hardy';
--exec _addUser 'hugo@gmail.com', 'hugo_hardy';
--exec _addUser 'fucanClaudy@gmail.com', 'claudy_faucan';

--insert into Favoris (IdUser, IdMovie) values (1, 2);


insert into Categorie([Name]) values ('Science Fiction')
insert into Categorie([Name]) values ('Drame Romantique')


insert into Person (FirstName, LastName, PictureUrl) values ('James', 'Cammeron','https://www.babelio.com/users/AVT_James-Cameron_7491.jpeg')
insert into Person (FirstName, LastName, PictureUrl) values ('Arnold', 'Schwarzenegger', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Arnold_Schwarzenegger_1974.jpg/220px-Arnold_Schwarzenegger_1974.jpg')
insert into Person (FirstName, LastName, PictureUrl) values ('Leonardo', 'DiCaprio', 'https://fr.web.img5.acsta.net/pictures/15/06/24/14/36/054680.jpg')
insert into Person (FirstName, LastName, PictureUrl) values ('Kate', 'Winsley', 'https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/people/la-vie-des-people/news/titanic-pourquoi-kate-winslet-a-vecu-un-enfer-apres-la-sortie-du-film-3897894/94266511-1-fre-FR/Titanic-pourquoi-Kate-Winslet-a-vecu-un-enfer-apres-la-sortie-du-film.jpg')
insert into Person (FirstName, LastName, PictureUrl) values ('Lana', 'Wachowski', 'https://fr.web.img2.acsta.net/c_310_420/pictures/16/03/09/16/29/317444.jpg')
insert into Person (FirstName, LastName, PictureUrl) values ('Keanu', 'Reeve', 'https://fr.web.img5.acsta.net/c_310_420/pictures/17/02/06/17/01/343859.jpg')
insert into Person (FirstName, LastName, PictureUrl) values ('Carrie-Anne', 'Moss', 'https://fr.web.img2.acsta.net/c_310_420/pictures/15/11/18/14/21/140336.jpg')




insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
values ('Terminator', '01-01-1984', 'Terminator (The Terminator) est un film de science-fiction américain réalisé par James Cameron, sorti en 1984, avec, dans les rôles principaux, Arnold Schwarzenegger, Michael Biehn et Linda Hamilton.'
,'https://www.premiere.fr/sites/default/files/styles/scale_crop_1280x720/public/2018-04/1200_e88n.jpg', 1, 1, 1,'the best')

insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
values ('Titanic', '01-01-1997', 'Titanic est un film dramatique américain écrit, produit et réalisé par James Cameron, sorti en 1997. Intégrant à la fois des aspects historiques et fictifs, le film est basé sur le récit du naufrage du RMS Titanic et met en vedette Leonardo DiCaprio et Kate Winslet.'
, 'https://img.20mn.fr/CErtKaVbRdGYu9BfHjihKA/830x532_leonardo-dicaprio-kate-winslet-titanic.jpg' , 1, 1, 2,'rose se prend un cartouche')

insert into Movie (Title, DateSortie, [Resume], ImageMovie, RealisatorId, ScenaristeId, CategorieId, PersonnalComment)
values ('Matrix 4', '12-22-2021', 'Dix-huit ans après les événements de Matrix Revolutions, Thomas A. Anderson (alias Neo) ne se souvient plus de rien et mène une vie d''apparence normale à San Francisco. Il se rend régulièrement chez un psychiatre à qui il raconte ses rêves étranges et qui lui prescrit des pilules bleues. Après la réapparition de visages familiers et en quête de réponses, Neo repart à la recherche du lapin blanc. Il rencontre un certain Morpheus, qui lui offre le choix entre rester dans la Matrice et prendre son envol.'
, 'https://images.bfmtv.com/vlY0fBqH9WQ26GAb1K8vcaqe0_s=/120x2:1880x992/640x0/images/Keanu-Reeves-dans-The-Matrix-Resurrections-1123406.jpg' , 5, 5, 2,'dernier volet de la saga')


insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 1, 2)
insert into PMovie([Role], MovieId, PersonId) values ('Terminator', 1, 1)
insert into PMovie([Role], MovieId, PersonId) values ('Jack', 2, 3)
insert into PMovie([Role], MovieId, PersonId) values ('Rose', 2, 4)
insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 2, 1)
insert into PMovie([Role], MovieId, PersonId) values ('Realisateur', 3, 5)
insert into PMovie([Role], MovieId, PersonId) values ('Neo', 3, 6)
insert into PMovie([Role], MovieId, PersonId) values ('Trinity', 3, 7)

exec _addUser 'wil85212@gmail.com', 'william_hardy';
exec _addUser 'hugo@gmail.com', 'hugo_hardy';
exec _addUser 'fucanClaudy@gmail.com', 'claudy_faucan';

insert into Favoris (IdUser, IdMovie) values (1, 2);
