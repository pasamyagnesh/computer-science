-- ====================
-- Data Definition Language (DDL)
-- Commands: CREATE, ALTER, DROP, TRUNCATE
-- Purpose: Define or manipulate the structure of database objects like tables, schemas, and databases.
-- ====================

-- Create a database
CREATE DATABASE jntu;

-- Connect to the database
\c jntu;

-- Create the 'students' table
CREATE TABLE students (
    ID VARCHAR(255),        -- Student ID
    NAME CHAR(50),          -- Student Name
    COURSE CHAR(50)         -- Course Enrolled
);

-- Create the 'courses' table
CREATE TABLE courses (
    COURSEID VARCHAR(255),  -- Unique Course ID
    BRANCH CHAR(50)         -- Branch Name
);

-- Alter the 'courses' table: Add a new column
ALTER TABLE courses ADD COLUMN PROFESSOR CHAR(50);  -- Adds a column for professor names

-- Alter the 'courses' table: Modify the 'branch' column to allow longer strings
ALTER TABLE courses ALTER COLUMN BRANCH TYPE VARCHAR(255);

-- Alter the 'courses' table: Rename 'branch' column to 'course_name'
ALTER TABLE courses RENAME COLUMN BRANCH TO COURSE_NAME;

-- Drop the 'courses' table (deletes the table and its data permanently)
DROP TABLE courses;

--DELETE is used to delete a sepfic row/ column bases on the considitn
DELETE TABLE courses WHERE COURSEID='CS02';

--TRUNCATE is used to deletd all the data in a table not the strure
TRUNCATE TABLE COURSES;

-- Recreate the 'courses' table
CREATE TABLE courses (
    COURSEID VARCHAR(255),  -- Unique Course ID
    BRANCH CHAR(50)         -- Branch Name
);


