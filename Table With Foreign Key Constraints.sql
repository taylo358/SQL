-- Initialize database
source Initialize.sql

-- Your SQL statements go here 
CREATE TABLE LessonSchedule (
    HorseID SMALLINT UNSIGNED NOT NULL,
    StudentID SMALLINT UNSIGNED,
    LessonDateTime DATETIME NOT NULL,
    PRIMARY KEY (HorseID, LessonDateTime),
    FOREIGN KEY (HorseID) REFERENCES Horse(ID) ON DELETE CASCADE,
    FOREIGN KEY (StudentID) REFERENCES Student(ID) ON DELETE SET NULL
);

SHOW COLUMNS FROM LessonSchedule;
