create or replace trigger supprimePersonne before delete on Personne for each row
declare
	excep exception; 
	numSecuDistant number;
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
end supprimePersonne; 
/

