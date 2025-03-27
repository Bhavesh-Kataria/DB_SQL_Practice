USE office_system;

-- find the highest-paid employee
SELECT employee_id,first_name,last_name,salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- find departments with more than 1 employee
SELECT department_name
FROM departments
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING COUNT(employee_id) > 1
);

-- list employees whose salary is above the average salary
SELECT employee_id, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
