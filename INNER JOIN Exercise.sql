-- Initialize database
source Initialize.sql

-- Your SELECT statement goes here
SELECT
   c.Name AS 'Name',
   c.City AS 'City',
   c.State AS 'State',
   COUNT(b.BowlGameID) AS 'Wins'
FROM College AS c
INNER JOIN BowlGame AS b
   ON c.CollegeID = b.WinningCollegeID
GROUP BY c.CollegeID, c.NAme, c.City, c.State;

/* Lab Instructions

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
Write a SELECT statement listing the college name, college city, college state, and the number of bowl game wins for colleges that have won at least one bowl game.

Hint: The column header for the number of bowl game wins should be displayed as 'Wins'.

*/
