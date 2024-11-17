-- ====================
-- Data Manipulation Language (DML)
-- Commands: INSERT, UPDATE, DELETE, SELECT
-- Purpose: Manipulate and interact with data in the database tables.
-- ====================

-- Insert data into the 'courses' table
INSERT INTO courses (COURSEID, BRANCH)
VALUES
    ('CS01', 'CSE'),
    ('CS02', 'AIML'),
    ('CS13', 'IT');

-- View the data in the 'courses' table
SELECT * FROM courses;

-- Update the 'branch' column for a specific course
UPDATE courses SET BRANCH = 'DS' WHERE COURSEID = 'CS02';

-- Verify the update
SELECT * FROM courses;

-- Delete a specific row from the 'courses' table
DELETE FROM courses WHERE COURSEID = 'CS02';

-- Verify the deletion
SELECT * FROM courses;

-- Reinsert rows into the 'courses' table
INSERT INTO courses (COURSEID, BRANCH)
VALUES
    ('CS01', 'CSE'),
    ('CS02', 'CSE'),
    ('CS03', 'AIML');

-- View data in the 'courses' table after reinsertion
SELECT * FROM courses;
