create or replace trigger supprimeHopital before delete on Hopital for each row
declare
	excep exception;
	numHopitalDistant number;
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
end supprimeHopital; 
/
