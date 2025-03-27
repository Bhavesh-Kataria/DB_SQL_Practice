USE office_system;

INSERT INTO departments
(department_name)
VALUES 
("Sales"),("Engineering"),("HR");

INSERT INTO employees
(first_name,last_name,department_id,salary,joining_date)
VALUES 
("Bhavesh","Kataria",1,40000,"2024-11-29"),
("Sahil","Belnekar",3,30000,"2025-1-30"),
("Rushikesh","Shinde",3,50000,"2024-11-29"),
("Rehan","Khan",2,23000,"2024-05-10");

INSERT INTO projects
(project_name,department_id)
VALUES 
("Cookbook",1);

INSERT INTO projects
(project_name,department_id,status)
VALUES 
("API",2,"AVAILABLE"),
("Jdbc",2,"AVAILABLE"),
("Selenium",2,"UNAVAILABLE"),
("GK",3,"ONGOING");