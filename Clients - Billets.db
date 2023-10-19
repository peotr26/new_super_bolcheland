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
	FOREIGN KEY("ID_client") REFERENCES "Clients"("ID") ON UPDATE CASCADE,
	PRIMARY KEY("ID")
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
	FOREIGN KEY("ID_employe") REFERENCES "Employes"("ID") ON UPDATE CASCADE,
	PRIMARY KEY("ID_attraction","ID_employe")
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
COMMIT;
