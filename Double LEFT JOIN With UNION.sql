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

/* INSTRUCTION

The College table has the following columns:

CollegeID - integer, primary key
Name - variable-length string
City - variable-length string
State - two character string
The BowlGame table has the following columns:

BowlGameID - integer, primary key
Bowl - variable-length string
Stadium - variable-length string
City - variable-length string
State - two character string
WinningCollegeID - integer, foreign key referencing CollegeID
Write a SELECT statement listing bowl games, stadiums, and winning college names.  

Include bowl games even if no matching wining college is recorded.
Include college names even if the college does not have a bowl game win recorded.
Hint: Your solution requires a UNION of two join queries.

*/
