set serveroutput on;

declare
    i number;

begin
    for i in  1..10 loop
    dbms_output.put_line('Sajith cool');
    end loop;
end;
/