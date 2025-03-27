USE office_system;

-- Write a query to retrieve all employees' details.
SELECT * FROM employees;

-- Write a query to insert a new department named "data scei".
  INSERT INTO departments(department_name) 
  VALUES
  ("Human Resources");

-- Write a query to update the salary of an employee with employee_id = 4 to 60000
UPDATE employees
SET salary=50000
WHERE employee_id=4;

-- Write a query to delete a project with the name "Outdated Project".
DELETE FROM projects
WHERE status="Outdated";
