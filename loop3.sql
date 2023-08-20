set serveroutput on;
DECLARE
  current_number NUMBER :=10;
BEGIN
  -- Get the start and end values 

  -- Iterate through the numbers from start_value to end_value
  while current_number < 101 LOOP
    -- Check if the number is a multiple of 10 and not equal to 50
    IF (current_number <> 50) THEN
      -- Print the number
      dbms_output.put_line(current_number);
    END IF;
    current_number := current_number +10;
  END LOOP;
END;
