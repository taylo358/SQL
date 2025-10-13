-- Initialize database
source Initialize.sql

-- Your SQL statements go here
ALTER TABLE Movie ADD COLUMN Producer VARCHAR(50);
ALTER TABLE Movie DROP COLUMN Genre;
ALTER TABLE Movie RENAME COLUMN Year TO ReleaseYear;
ALTER TABLE Movie MODIFY COLUMN ReleaseYear SMALLINT;

-- Show columns from the updated table
SHOW COLUMNS FROM Movie;
