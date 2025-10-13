-- Initialize database
source Initialize.sql

-- Your SQL statements go here 
CREATE TABLE Student(
    ID SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Street VARCHAR(50) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State CHAR(2) DEFAULT 'TX' NOT NULL,
    Zip MEDIUMINT UNSIGNED CHECK (Zip <= 16777215) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Email VARCHAR(30) UNIQUE
);

SHOW COLUMNS FROM Student;
