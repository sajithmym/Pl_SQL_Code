DECLARE
  emp_id NUMBER := 200;
  cursor emp_cursor IS
    SELECT first_name
    FROM employees
    WHERE employee_id = emp_id;
  first_name VARCHAR2(20);
  is_open BOOLEAN;
  found BOOLEAN;
  notfound BOOLEAN;
BEGIN
  -- Open the cursor
  OPEN emp_cursor;

  -- Fetch the first row
  FETCH emp_cursor INTO first_name;

  -- Check if the cursor is open
  is_open := emp_cursor%ISOPEN;

  -- Check if the cursor has found a row
  found := emp_cursor%FOUND;

  -- Check if the cursor has not found a row
  notfound := emp_cursor%NOTFOUND;

  -- Print the results
  IF is_open THEN
    dbms_output.put_line('The cursor is open.');
  END IF;

  IF found THEN
    dbms_output.put_line('The cursor has found a row.');
    dbms_output.put_line('The first name of the employee with employee id 200 is ' || first_name);
  END IF;

  IF notfound THEN
    dbms_output.put_line('The cursor has not found a row.');
  END IF;

  -- Close the cursor
  CLOSE emp_cursor;
END;
