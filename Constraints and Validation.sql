USE office_system;

-- add a unique constraint to the project_name column in Projects
ALTER TABLE projects
ADD CONSTRAINT UNIQUE (project_name);

-- remove the status column from the Projects table
ALTER TABLE projects
DROP COLUMN status;
