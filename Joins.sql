USE office_system;



-- Write a query to fetch employees along with their department names
SELECT employee_id, first_name, last_name, department_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id;

-- Query to list all projects along with their respective department names 
SELECT project_id, project_name, department_name
FROM projects
JOIN departments
ON projects.department_id = departments.department_id;

-- employees working on a project
SELECT employee_id, first_name, last_name, project_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
JOIN projects
ON projects.department_id = departments.department_id;
