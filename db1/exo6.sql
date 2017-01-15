-- Nous créons le déclencheur supprimePersonne

create or replace trigger supprimePersonne before delete on Personne for each row
declare
excep exception; numSecuDistant number;
begin
	numSecuDistant:=0;
	-- compte le nombre de NumSecu dans la table distante
	select count(numSecu) into numSecuDistant
		from personnel@hopit
		where numSecu=:old.numSecu;
	
	if(numSecuDistant != 0) then
		raise excep;
	end if;
	exception
		when excep then raise_application_error(-20009,'Suppression impossible ! NumSecu référencé dans une table distante');
end; /

-- Et ici, nous réalisons le déclencheur supprimeHopital

create or replace trigger supprimeHopital before delete on Hopital for each row
declare
excep exception; numHopitalDistant number;
begin
	numHopitalDistant:=0;
	-- compte le nombre de NumHopital dans la table distante select
	SELECT count(numHopital) into numHopitalDistant
		from service@hopit 
		where numHopital=:old.numHopital;

	if(numHopitalDistant != 0) then
		raise excep;
	end if;
	exception
		when excep then raise_application_error(-20009,'Suppression impossible ! NumHopital référencé dans une table distante');
end ;/

-- Création du trigger insereIntegre

create or replace trigger insereIntegre before insert or update on Integre for each row
declare 
	excep exception; 
	nbTuples number;
begin
	nbTuples:=0;
	select count(*) into nbTuples from Service@hopit 
		where numService=:new.numService;
	
	if(nbTuples != 1) then 
		raise excep; 
	end if;
	
	exception
		when excep then 
			raise_application_error(-20009,'Impossible, violation de contrainte');
end ; /
