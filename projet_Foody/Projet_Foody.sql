DROP DATABASE Foody;
CREATE DATABASE Foody;
USE Foody;

CREATE TABLE client
(codeclient varchar(50) PRIMARY KEY,
societe varchar(50),
contact varchar(50),
fonction varchar(50),
adresse varchar(100),
ville varchar(50),
region varchar(50),
codepostal varchar(50),
pays varchar(50),
tel varchar(50),
fax varchar(50)
);

CREATE TABLE messager
(NoMess int PRIMARY KEY,
NomMess varchar(50) ,
Tel varchar(50)
);

CREATE TABLE categorie
(codecateg int PRIMARY KEY,
Nomcateg varchar(50),
description varchar(100)
);

CREATE TABLE Fournisseur
(Nofour int PRIMARY KEY,
société varchar (50),
contact varchar (50),
fonction varchar (50),
adresse varchar (50),
ville varchar (50),
region varchar (50),
codepostal varchar(50),
pays varchar (50),
tel varchar(50),
fax varchar(50),
pageacceuil varchar(100)
);



CREATE TABLE commande
(Nocom int PRIMARY KEY,
codecli varchar(50) ,
NoEmp int ,
DataCom datetime,
AlivAvant datetime,
DataEnv datetime,
NoMess int,
Port float,
Destinataire varchar(50),
AdrLiv varchar(100),
VilleLiv varchar(50),
RegionLiv varchar(50),
CodepostalLiv varchar(50),
PaysLiv varchar(50)

);

CREATE TABLE produit
 (refpro int  PRIMARY KEY,
 Nomprod varchar(50),
 Nofour int,
 codecateg int,
 QteparUnit varchar (50),
 prixUnit float,
 UnitesStock int,
 Unitescom int,
 niveauReap int,
 indisponible int
 );
 
CREATE TABLE Detailcommande
(Nocom int,
refpro int,
prixUnit float,
Qte int ,
remise float ,
PRIMARY KEY( Nocom,refpro)

);


 
CREATE TABLE Employe
(NoEmp int PRIMARY KEY,
Nom varchar(50),
Prenom varchar(50),
fontion varchar(50),
titrecourtoisie varchar(50),
dateNaissance datetime,
dateEmbauche datetime,
adresse varchar(100),
ville varchar(50),
region varchar(50),
codepostal varchar(50),
pays varchar (50),
Teldom varchar (50),
Extension int,
RendcompteA int

);
set global local_infile=1;

LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\categorie.csv'
INTO TABLE categorie
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\client.csv'
INTO TABLE client
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\messager.csv'
INTO TABLE messager
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\commande.csv'
INTO TABLE commande
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\produit.csv'
INTO TABLE produit
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\detailsCommande.csv'
INTO TABLE Detailcommande
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\Employe.csv'
INTO TABLE Employe
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE  'C:\\Users\\utilisateur\\Dropbox\\SIMPLON.CO\\fournisseur.csv'
INTO TABLE Fournisseur
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


ALTER TABLE commande ADD FOREIGN KEY (codeCli) REFERENCES client (codeclient);
ALTER TABLE commande ADD FOREIGN KEY (NoEmp) REFERENCES Employe (NoEmp);
ALTER TABLE Commande ADD FOREIGN KEY (NoMess) REFERENCES messager(NoMess);

ALTER TABLE Detailcommande ADD FOREIGN KEY (refpro) REFERENCES produit (refpro);
ALTER TABLE Detailcommande ADD FOREIGN KEY (Nocom) REFERENCES commande (Nocom);

ALTER TABLE produit ADD FOREIGN KEY (codecateg ) REFERENCES categorie (codecateg);
ALTER TABLE produit ADD FOREIGN KEY (Nofour) REFERENCES Fournisseur (Nofour);







