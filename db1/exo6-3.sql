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
end insereIntegre; 
/
