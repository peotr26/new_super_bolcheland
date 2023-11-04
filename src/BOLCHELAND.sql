BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Clients" (
	"ID"	INTEGER,
	"Nom"	TEXT,
	"Age"	INTEGER,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Billets" (
	"ID"	INTEGER,
	"ID_client"	INTEGER,
	"Prix"	NUMERIC,
	"Enfant"	BLOB,
	PRIMARY KEY("ID"),
	FOREIGN KEY("ID_client") REFERENCES "Clients"("ID") ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Employes" (
	"ID"	INTEGER,
	"Nom"	TEXT,
	"Prenom"	TEXT,
	"Date_naissance"	DATE,
	"Role"	TEXT,
	"Salaire_horaire"	REAL,
	"Heures_par_semaine"	INTEGER,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Attractions" (
	"ID"	INTEGER,
	"Places"	INTEGER,
	"Affectations"	INTEGER,
	"Cout_horaire"	REAL,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Affectation_attraction" (
	"ID_attraction"	INTEGER,
	"ID_employe"	INTEGER,
	"Date"	DATE,
	"Horaires"	TIME,
	"Duree"	TIME,
	FOREIGN KEY("ID_attraction") REFERENCES "Attractions"("ID") ON UPDATE CASCADE,
	PRIMARY KEY("ID_attraction","ID_employe"),
	FOREIGN KEY("ID_employe") REFERENCES "Employes"("ID") ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Affectation_restaurant" (
	"ID_restaurant"	INTEGER,
	"ID_employe"	INTEGER,
	"Date"	DATE,
	"Horaires"	TIME,
	"Duree"	TIME,
	FOREIGN KEY("ID_employe") REFERENCES "Employes"("ID") ON UPDATE CASCADE,
	FOREIGN KEY("ID_restaurant") REFERENCES "Restaurants"("ID") ON UPDATE CASCADE,
	PRIMARY KEY("ID_restaurant","ID_employe")
);

CREATE TABLE IF NOT EXISTS "Menus" (
	"ID"	INTEGER,
	"Nom"	TEXT,
	"Prix"	REAL,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Restaurants" (
	"ID"	INTEGER,
	"Nom"	TEXT,
	"Places"	INTEGER,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Acheter_menu" (
	"ID_restaurant"	INTEGER,
	"ID_client"	INTEGER,
	"ID_menu"	INTEGER,
	"Quantite"	INTEGER,
	FOREIGN KEY("ID_menu") REFERENCES "Menus"("ID") ON UPDATE CASCADE,
	FOREIGN KEY("ID_restaurant") REFERENCES "Restaurants"("ID") ON UPDATE CASCADE,
	FOREIGN KEY("ID_client") REFERENCES "Clients"("ID") ON UPDATE CASCADE,
	PRIMARY KEY("ID_restaurant","ID_client","ID_menu")
);

INSERT INTO "Clients" VALUES (1038,'DUPONT',53);
INSERT INTO "Clients" VALUES (1039,'DUPONT',23);
INSERT INTO "Clients" VALUES (2046,'MOREAU',34);
INSERT INTO "Clients" VALUES (2647,'THOMAS',29);
INSERT INTO "Clients" VALUES (4028,'DUBOIS',42);
INSERT INTO "Clients" VALUES (4029,'DUBOIS',45);
INSERT INTO "Clients" VALUES (4030,'DUBOIS',8);
INSERT INTO "Clients" VALUES (7394,'ROBERT',22);
INSERT INTO "Clients" VALUES (7395,'ROBERT',16);
INSERT INTO "Clients" VALUES (9304,'PETIT',86);

INSERT INTO "Billets" VALUES (2561,1038,'39,99','False');
INSERT INTO "Billets" VALUES (2562,1039,'39,99','False');
INSERT INTO "Billets" VALUES (2563,2046,'39,99','False');
INSERT INTO "Billets" VALUES (2564,2647,'39,99','False');
INSERT INTO "Billets" VALUES (2565,4028,'39,99','False');
INSERT INTO "Billets" VALUES (2566,4029,'39,99','False');
INSERT INTO "Billets" VALUES (2567,4030,'39,99','True');
INSERT INTO "Billets" VALUES (2568,7394,'39,99','False');
INSERT INTO "Billets" VALUES (2569,7395,'39,99','True');
INSERT INTO "Billets" VALUES (2570,9304,'39,99','False');

INSERT INTO "Employes" VALUES (1,'Gabriol','François','1984-06-23','Cuisinier',13.0,35);
INSERT INTO "Employes" VALUES (2,'Petit-Fils','Jean','1969-07-20','Technicien',13.0,35);
INSERT INTO "Employes" VALUES (3,'Dos Santos','Carmen','2002-06-30','Réceptioniste',12.0,35);
INSERT INTO "Employes" VALUES (4,'Labé','Pierre','1968-05-26','Chef d''équipe',15.0,35);
INSERT INTO "Employes" VALUES (5,'Glucksann','Julie','1974-09-13','Cuisinier',12.0,35);
INSERT INTO "Employes" VALUES (6,'Clairon','Julien','1992-02-29','Technicien',13.0,35);
INSERT INTO "Employes" VALUES (7,'Maé','Christophe','1999-12-31','Réceptioniste',13.0,35);
INSERT INTO "Employes" VALUES (8,'De La Particule','Jean-Marie','2001-07-23','Project manager',500.0,1);
INSERT INTO "Employes" VALUES (9,'De La Particule','Anne-Claire','2001-07-23','Project manager',400.0,1);
INSERT INTO "Employes" VALUES (10,'Mensah','Moussa','2009-08-01','Technicien',4.0,45);
INSERT INTO "Employes" VALUES (11,'Koffi','Nabil','2008-12-03','Technicien',4.0,45);
INSERT INTO "Employes" VALUES (12,'Abdou','Hakim','2007-06-15','Technicien',4.0,45);
INSERT INTO "Employes" VALUES (13,'Ndiaye','Yasmina','2008-03-05','Ménage',3.0,45);
INSERT INTO "Employes" VALUES (14,'Traore','Fatna','2009-11-07','Ménage',3.0,45);
INSERT INTO "Employes" VALUES (15,'Ngo','Housna','2009-05-11','Plongiste',3.0,45);
INSERT INTO "Employes" VALUES (16,'Fernagu','Pierre','2006-02-26','H@ck€rhYuM4n',0.0,-1);
INSERT INTO "Employes" VALUES (17,'Dovergne','Maxim','2006-09-16','H@ck€rhYuM4n',0.0,-1);
INSERT INTO "Employes" VALUES (18,'Lefevre','Maxime','2006-09-28','H@ck€rhYuM4n',0.0,-1);

INSERT INTO "Attractions" VALUES (1,30,1,90.0);
INSERT INTO "Attractions" VALUES (2,150,3,300.0);
INSERT INTO "Attractions" VALUES (3,75,3,175.0);
INSERT INTO "Attractions" VALUES (4,80,2,120.0);

INSERT INTO "Affectation_attraction" VALUES (1,11,'2023-9-23','10:00:00','02:00:00');
INSERT INTO "Affectation_attraction" VALUES (2,12,'2023-9-23','12:00:00','03:00:00');
INSERT INTO "Affectation_attraction" VALUES (2,2,'2023-9-23','12:00:00','03:00:00');
INSERT INTO "Affectation_attraction" VALUES (2,10,'2023-9-23','12:00:00','03:00:00');
INSERT INTO "Affectation_attraction" VALUES (3,4,'2023-9-23','15:00:00','02:00:00');
INSERT INTO "Affectation_attraction" VALUES (3,6,'2023-9-23','15:00:00','02:00:00');
INSERT INTO "Affectation_attraction" VALUES (3,11,'2023-9-23','15:00:00','02:00:00');
INSERT INTO "Affectation_attraction" VALUES (4,2,'2023-9-23','03:00:00','08:00:00');
INSERT INTO "Affectation_attraction" VALUES (4,12,'2023-9-23','11:00:00','03:00:00');

INSERT INTO "Restaurants" VALUES (1,'Stalingrad',9);
INSERT INTO "Restaurants" VALUES (2,'Leningrad',56);
INSERT INTO "Restaurants" VALUES (3,'Moskva',130);
INSERT INTO "Restaurants" VALUES (4,'Kiev',30);

INSERT INTO "Affectation_restaurant" VALUES (1,1,'2023-9-23','11:00:00','14:00:00');
INSERT INTO "Affectation_restaurant" VALUES (3,1,'2023-9-23','18:00:00','22:00:00');
INSERT INTO "Affectation_restaurant" VALUES (2,5,'2023-9-23','11:00:00','14:00:00');
INSERT INTO "Affectation_restaurant" VALUES (4,5,'2023-9-23','18:00:00','20:00:00');
INSERT INTO "Affectation_restaurant" VALUES (1,15,'2023-9-23','14:00:00','15:00:00');
INSERT INTO "Affectation_restaurant" VALUES (2,15,'2023-9-23','22:00:00','23:00:00');
INSERT INTO "Affectation_restaurant" VALUES (3,15,'2023-9-23','15:00:00','16:00:00');
INSERT INTO "Affectation_restaurant" VALUES (4,15,'2023-9-23','23:00:00','23:59:59');

INSERT INTO "Menus" VALUES (1,'Spécialité Борщ',0.0);
INSERT INTO "Menus" VALUES (2,'Spaguetto Bolo Carbo',41.99);
INSERT INTO "Menus" VALUES (3,'Le Chicken nuggie',21.0);
INSERT INTO "Menus" VALUES (4,'Truffes sur leur lit de Caviar',1200.0);
INSERT INTO "Menus" VALUES (5,'Mini-poellee de Souris',69.42);
INSERT INTO "Menus" VALUES (6,'Canard laqué du chef Donald',69.69);
INSERT INTO "Menus" VALUES (7,'Blinis Russes',19.99);
INSERT INTO "Menus" VALUES (8,'Мороженое',14.99);
INSERT INTO "Menus" VALUES (9,'Pirojkis',24.99);
INSERT INTO "Menus" VALUES (10,'Boeuf Stroganov',29.99);

INSERT INTO "Acheter_menu" VALUES (1,1039,1,2);
INSERT INTO "Acheter_menu" VALUES (2,2647,2,1);
INSERT INTO "Acheter_menu" VALUES (1,1039,3,6);
INSERT INTO "Acheter_menu" VALUES (3,2647,4,1);
INSERT INTO "Acheter_menu" VALUES (4,1039,5,3);
INSERT INTO "Acheter_menu" VALUES (2,9304,6,2);
INSERT INTO "Acheter_menu" VALUES (4,4028,7,2);
INSERT INTO "Acheter_menu" VALUES (3,9304,8,2);
INSERT INTO "Acheter_menu" VALUES (2,4030,9,1);
INSERT INTO "Acheter_menu" VALUES (1,2046,10,1);
INSERT INTO "Acheter_menu" VALUES (3,4030,7,5);
INSERT INTO "Acheter_menu" VALUES (4,1039,3,4);

COMMIT;
