declare 
	i number := 1;
begin
  while i <> 11 loop
	if i=1 then
		dbms_output.put_line('Welcome Sajith...'||' Value of i = '||i);
	elsif i=2 then
		dbms_output.put_line('Welcome Sajithmym...'||' Value of i = '||i);
	elsif i=3 then
		dbms_output.put_line('Welcome Sajith Cool...'||' Value of i = '||i);
	else
		dbms_output.put_line('Welcome you are Mohamed Sajith Cool...'||' Value of i = '||i);
	end if;
	i := i+1;
 end loop;
end;
/
