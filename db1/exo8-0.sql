drop table Affectation;
drop table Rattache;
drop table Service;
drop table Administratif;
drop table Infirmiere;
drop table Medecin;
drop table Personnel;


create table Personnel (
numMatricule number(4) primary key,
numSecu char(15) references Personne(numSecu),
salaire number not null,
grade varchar2(10),
dateEmbauche date not null );

create table Medecin (
numAgrement number(3) primary key,
numMatricule number(4) references Personnel(numMatricule),
specialite varchar2(20) not null
);


create table Infirmiere (
numInfirmiere number(3) primary key,
numMatricule number(4) references Personnel(numMatricule),
typeContrat varchar2(20) not null
);


create table Administratif (
numAdministratif number(3) primary key,
numMatricule number(4) references Personnel(numMatricule),
poste varchar2(20) not null,
qualification varchar2(20) not null,
typeContrat varchar2(20) not null
);

create table Service (
numService number(2),
nomService varchar2(20) not null,
tel number(10),
nbLits number,
numHopital number references Hopital(numHopital),
primary key(numService)
);


create table Rattache (
numAgrement number(3) references Medecin(numAgrement),
numService number(2) references Service(numService),
primary key(numAgrement, numService)
);


create table Affectation (
numInfirmiere number(3) references Infirmiere(numInfirmiere),
numService number(2) references Service(numService),
primary key(numInfirmiere, numService)
);

Insert into personne values('183087611004457', 'Boss', 'Franck', '45 rue du dessert', 0233251394);
Insert into personne values('183087611004458', 'House', 'Gregory', 'Place de la Vicodine', 0238251294);

Insert into personnel values(4000, '183087611004457', 1200,null ,to_date('01/01/01', 'DD/MM/YY')) ;
Insert into personnel values(4001, '183087611004458', 1200,null ,to_date('02/01/01', 'DD/MM/YY')) ;

Insert into medecin values(300, 4001, 'Diagnosticien') ;

Insert into infirmiere values(310, 4000, 'CDI') ;

Insert into service values(20,'chirurgie',232323232,50,2);
Insert into service values(21,'reanimation',232323233,35,2);

Insert into rattache values(300, 20) ;

Insert into affectation values(310, 21);
