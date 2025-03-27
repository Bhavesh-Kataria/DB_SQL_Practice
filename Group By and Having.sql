-- fetch the number of employees in each department, but only for departments with more than 1 employee
SELECT department_id, COUNT(*) AS totalEmployees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;

-- query to find the total number of ongoing projects in each department.
