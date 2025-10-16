-- Initialize database
source Initialize.sql

-- Your SELECT statement goes here
SELECT 
    b.Bowl AS 'Bowl',
    b.Stadium AS 'Stadium',
    c.Name AS 'Name'
FROM BowlGame AS b
LEFT JOIN College AS c
    ON b.WinningCollegeID = c.CollegeID

UNION

-- Colleges (even if they haven’t won a bowl)
SELECT 
    b.Bowl AS 'Bowl',
    b.Stadium AS 'Stadium',
    c.Name AS 'Name'
FROM College AS c
LEFT JOIN BowlGame AS b
    ON c.CollegeID = b.WinningCollegeID

ORDER BY Bowl IS NULL;
