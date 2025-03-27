
SELECT * 
-- employee last name has letter S
FROM employees
WHERE last_name LIKE '%S%';

-- project name ends with word system
SELECT * 
FROM projects
WHERE project_name LIKE '%System';
