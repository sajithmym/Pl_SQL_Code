set serveroutput on;
DECLARE
  i NUMBER;
  number_v NUMBER:=5;
BEGIN
  number_v := &Number;
  -- Iterate through the numbers from 1 to 10
  FOR i IN 1..12 LOOP
    -- Print the multiplication table
    dbms_output.put_line(i || ' * ' || number_v || ' = ' || number_v * i);
  END LOOP;
END;
