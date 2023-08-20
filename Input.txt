DECLARE 
	NAME VARCHAR2(30) := 'hellow';
BEGIN 
	SELECT first_name INTO NAME FROM employees where employee_id=&Emp_id;
	DBMS_OUTPUT.PUT_LINE(NAME);
END;
/
