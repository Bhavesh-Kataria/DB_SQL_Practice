USE office_system;

-- query to calculate the total salary paid to employees in each department
SELECT department_name , sum(salary)
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
GROUP BY (department_name);

-- average salary of all employees
SELECT AVG(salary)
FROM employees;

-- count the number of employees in each department
SELECT department_name , count(employee_id)
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
GROUP BY (department_name);
