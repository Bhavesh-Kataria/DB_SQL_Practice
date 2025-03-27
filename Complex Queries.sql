
-- fetch employees who are not assigned to any department
SELECT first_name,last_name,department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_id IS NULL;


-- fetch employees who have been with the company for more than 5 years.
SELECT first_name,last_name,joining_date
FROM employees
WHERE DATEDIFF(CURDATE(), joining_date) > 5 * 365;

-- fetch department names with no projects assigned
SELECT *
FROM departments
LEFT JOIN projects
ON departments.department_id = projects.department_id
WHERE projects.project_id IS NULL;