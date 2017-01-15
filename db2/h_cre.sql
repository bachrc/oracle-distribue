
drop table Affectation; 
drop table Rattache; 
drop table Service;
drop table Administratif; 
drop table Infirmiere; 
drop table Medecin; 
drop table Personnel;

create table Personnel (
numMatricule number(4) primary key, 
numSecu char(15),
salaire number not null, grade varchar2(10),
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
numMatricule number(4) references Personnel(numMatricule), poste varchar2(20) not null, 
qualification varchar2(20) not null,
typeContrat varchar2(20) not null
);

create table Service (
numService number(2) primary key, nomService varchar2(20) not null,
tel number(10), 
nbLits number,  numHopital number  );


create table Rattache (
numAgrement number(3) references Medecin(numAgrement), 
 numService number(2) references Service(numService), 
 primary key(numAgrement, numService)
);


create table Affectation (
numInfirmiere number(3) references Infirmiere(numInfirmiere), 
numService number(2) references Service(numService), primary key(numInfirmiere, numService)
);
