CREATE SCHEMA portfolio;

CREATE TABLE categories ( 
	id                   int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	categorie            varchar(200)      
 );

CREATE TABLE clients ( 
	id                   int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	client               varchar(200)      
 );

CREATE TABLE projets ( 
	id                   int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	titre                varchar(200)      ,
	url                  varchar(100)      ,
	details              varchar(2500)      ,
	idcategorie          int      ,
	idclient             int      ,
	sary1                varchar(200)      ,
	sary2                varchar(200)      ,
	sary3                varchar(200)      ,
	typa                 varchar(20)      ,
	annee                int      ,
	CONSTRAINT fk_projets_categories FOREIGN KEY ( idcategorie ) REFERENCES categories( id ) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT fk_projets_clients FOREIGN KEY ( idclient ) REFERENCES clients( id ) ON DELETE RESTRICT ON UPDATE RESTRICT
 );

CREATE INDEX fk_projets_categories ON projets ( idcategorie );

CREATE INDEX fk_projets_clients ON projets ( idclient );

CREATE VIEW portfolio.v_projets AS select `p`.`id` AS `idprojet`,`p`.`titre` AS `titre`,`p`.`annee` AS `annee`,`p`.`url` AS `url`,`p`.`details` AS `details`,`p`.`sary1` AS `sary1`,`p`.`sary2` AS `sary2`,`p`.`sary3` AS `sary3`,`c`.`categorie` AS `categorie`,`cl`.`client` AS `client` from ((`portfolio`.`projets` `p` join `portfolio`.`categories` `c` on((`p`.`idcategorie` = `c`.`id`))) join `portfolio`.`clients` `cl` on((`p`.`idclient` = `cl`.`id`)));

INSERT INTO categories( categorie ) VALUES ('Développement d''application');
INSERT INTO categories( categorie ) VALUES ( 'Développement web et design');
INSERT INTO clients( client ) VALUES ('Ministère de la Pêche et de l''Economie Bleue');
INSERT INTO clients( client ) VALUES ( 'Moi-même');
INSERT INTO projets(titre, url, details, idcategorie, idclient, sary1, sary2, sary3, typa, annee ) VALUES ('Mise en place d''une application web sur la gestion de collectes des produits halieutiques', 'projet déployé localement au sein du Service de la Gestion des Collectes', 'C''est une application web qui gère la collecte des produits halieutiques dans touts les districts de Madagascar.On fait dans cette application la saisie des informations concernant la collecte telles que les informations du collecteur,la saisie des espèces,la saisie des bordereaux de redevances,la saisie après paiement.\nDans cette application, on peut aussi avoir tous les documents administratifs nécessaires sous format PDF.Parmis ces documents, on  a le permis de collecte,le décompte de redevance,les bordereaux de redevance,le permis de transport des produits collectés,les autorisations de collectes.\nEnfin cette application fournit plusieurs états d''analyse et statistiques pour aider à la prise de décision.\nPour la réalisation de cette application, on a utilisé SPRING MVC associé à Hibernate et PostgreSQL.', 1, 1, 'assets/img/minpeche1.png', 'assets/img/minpeche2.png', 'assets/img/minpeche3.png', 'filter-app', 2022);
INSERT INTO projets(titre, url, details, idcategorie, idclient, sary1, sary2, sary3, typa, annee ) VALUES ('Mon portfolio simple', 'www.exemple.com', 'Ce projet est mon portfolio simplifié qui résume suffisamment mon profil.\nOn y trouve mes informations professionnelles telles que mes compétences,mes projets réalisés,mes contacts.\nPour la réalisation de ce projet, on a utilisé Bootstrap côté client.Du côté serveur, on a utilisé PHP.\nComme base de données, on a utilisé MySQL.', 2, 2, 'assets/img/portfolio1.png', 'assets/img/portfolio2.png', 'assets/img/portfolio3.png', 'filter-web', 2023);
