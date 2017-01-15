



drop table  Integre ;
drop table Hopital;
drop table Hospitalise;
drop table Externe;
drop table Patient;
drop table Personne;


create table Personne (
numSecu char(15) primary key,  
nom varchar2(20) not null, prenom varchar2(20) not null, adresse varchar2(100) not null, telephone number(10)
);


create table Patient (
numDossier number(10) primary key,  
numSecu char(15) references Personne(numSecu),  
numMutuelle number(10), 
dateCreation date not null  );


create table Externe (
numAdmission number(10) primary key, 
 numDossier number(10) references Patient(numDossier),
dateAdmission date not null 
);


create table Hospitalise (
numHospitalisation number(10) primary key,
numDossier number(10) references Patient(numDossier),
dateEntree date not null, 
dateSortie date 
);


create table Hopital (
numHopital number primary key,  nomHopital varchar2(30), 
adresse varchar2(100) 
);


create table Integre (
numHospitalisation number(10) references Hospitalise(numHospitalisation),
numService number(2), 
type_conditionnement varchar2(3), 
 prix number, 
 dateIntegration date, 
primary key(numHospitalisation, numService) );
 


