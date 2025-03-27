USE office_system;

-- employee names who joined after 2020
SELECT first_name,last_name
FROM employees
WHERE joining_date > '2020-12-31';

-- employees with salaries between 40,000 and 70,000
SELECT first_name,last_name
FROM employees
WHERE salary BETWEEN 40000 AND 70000;

-- employees in the "Sales" department
SELECT first_name,last_name,department_name
FROM employees
INNER JOIN departments
ON departments.department_id = employees.department_id
WHERE department_name = 'Sales';

-- employees whose first name starts with 'A'
SELECT first_name,last_name
FROM employees
WHERE first_name LIKE 'A%';

-- top 3 highest-paid employees
SELECT first_name,last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- projects where the status is not "UNAVAILABLE"
SELECT project_name
FROM projects
WHERE status != 'UNAVAILABLE';
