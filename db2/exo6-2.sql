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
end inserePersonnel; 
/
