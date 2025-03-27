CREATE DATABASE office_system;

USE office_system;

CREATE TABLE departments(
	department_id INT AUTO_INCREMENT,
    department_name VARCHAR(20) UNIQUE NOT NULL,
    PRIMARY KEY(department_id)
);

CREATE TABLE employees(
	employee_id INT AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    department_id INT,
    salary INT NOT NULL,
    joining_date DATE not null,
    PRIMARY KEY(employee_id),
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
	ON UPDATE CASCADE
);

CREATE TABLE projects(
	project_id INT AUTO_INCREMENT,
    project_name VARCHAR(30) NOT NULL,
    department_id INT,
    status VARCHAR(50) DEFAULT "ONGOING",
    PRIMARY KEY(project_id),
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
	ON UPDATE CASCADE
);
