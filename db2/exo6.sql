
-- Création du déclencheur TService

create or replace trigger TService before delete or update or insert on Service for each row
declare 
	excep exception; 
	numServiceDistant number; 
	nbTuples number;
begin
	numServiceDistant:=0; nbTuples:=0;
 	if deleting then
 		-- compte le nombre de NumService dans la table distante
 		select count(numService) into numServiceDistant
 			from integre@central
 			where numService=:old.numService;
 		if(numServiceDistant != 0) 
			then raise excep; 
		end if;
	 end if;

	 if inserting or updating then
 		-- compte le nombre de tuples distants correspondants
 		select count(*) into nbTuples 
			from Hopital@central 
			where numHopital=:new.numHopital;

		if(nbTuples != 1) then 
			raise excep; 
		end if;
 	end if;

	exception
		when excep then 
			raise_application_error(-20009,'Violation de contrainte !');
end ; /

-- Création du trigger inserePersonnel

create or replace trigger inserePersonnel before insert or update on Personnel for each row
declare 
	excep exception; 
	nbTuples number;
begin
	nbTuples:=0;
	select count(*) into nbTuples from Personne@central 
	where numSecu=:new.numSecu;
	
	if(nbTuples != 1) then 
		raise excep; 
	end if;
	
	exception
		when excep then 
			raise_application_error(-20009,'Impossible, violation de contrainte');
end ; /
