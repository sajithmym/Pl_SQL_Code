set serveroutput on;
DECLARE
  start_value NUMBER;
  end_value NUMBER;
  current_number NUMBER;
BEGIN
  -- Get the start and end values from the user
  start_value := &sta;
  end_value := &en;

  -- Iterate through the numbers from start_value to end_value
  FOR current_number IN start_value..end_value LOOP
    -- Check if the number is a multiple of 10 and not equal to 50
    IF (current_number MOD 10 = 0 AND current_number <> 50) THEN
      -- Print the number
      dbms_output.put_line(current_number);
    END IF;
  END LOOP;
END;
