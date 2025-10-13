-- Initialize database
source Initialize.sql

-- Your SQL statements go here
CREATE Table Movie(
    ID SMALLINT UNSIGNED CHECK (ID <= 65000),
    Title VARCHAR(50),
    Rating CHAR(4),
    ReleaseDate DATE,
    Budget DECIMAL(8,2)
);

SHOW TABLES;
