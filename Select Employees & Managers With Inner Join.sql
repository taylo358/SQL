-- Initialize database
source Initialize.sql

-- Your SELECT statement goes here
SELECT e.FirstName AS Employee, 
m.FirstName AS Manager
FROM Employee AS e
INNER JOIN Employee AS m
ON e.ManagerID = m.ID
ORDER BY e.FirstName;
