CREATE DATABASE INCOME_ELECTRIC;
USE INCOME_ELECTRIC;

CREATE TABLE Staffs (
StaffID INT IDENTITY (1,1) PRIMARY KEY,
[Full Name] VARCHAR(100),
Department VARCHAR(50),
Position VARCHAR(100),
[Phone Number] VARCHAR(20),
[Date Hired] DATE);

SELECT * FROM Staffs;

-- List all staff alphabetically
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
ORDER BY [Full Name] ASC;

-- Filter staff in Operations
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE Department = 'Operations';

-- Staff hired in January 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] BETWEEN '2025-01-01' AND '2025-01-31';

-- Count staff in each department
SELECT Department, COUNT(*) AS Staff_Count
FROM Staffs
GROUP BY Department;

-- Staff hired after Feb 1, 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] > '2025-02-01';
-- Search by partial name
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Full Name] LIKE '%John%';

--  List all staff alphabetically
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
ORDER BY [Full Name] ASC;

-- List staff in Operations
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE Department = 'Operations';

--  List staff in HR or Finance
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE Department IN ('HR','Finance');

--  Count staff per department
SELECT Department, COUNT(*) AS Staff_Count
FROM Staffs
GROUP BY Department;

--  Count staff per position
SELECT Position, COUNT(*) AS Staff_Count
FROM Staffs
GROUP BY Position;

--  Show staff hired in January 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] BETWEEN '2025-01-01' AND '2025-01-31';

-- Show staff hired in February 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] BETWEEN '2025-02-01' AND '2025-02-28';

-- Show staff hired in March 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] BETWEEN '2025-03-01' AND '2025-03-31';

-- Show staff hired after 1st February 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] > '2025-02-01';

-- Show staff hired before 15th February 2025
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] < '2025-02-15';

--List staff hired between 10th Jan and 20th Jan
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Date Hired] BETWEEN '2025-01-10' AND '2025-01-20';

--  Show staff whose name contains 'Mary'
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Full Name] LIKE '%Mary%';

-- Show staff whose name starts with 'A'
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE [Full Name] LIKE 'A%';

-- Show staff whose phone number starts with '0802'
SELECT [Full Name], [Phone Number], Department, Position
FROM Staffs
WHERE [Phone Number] LIKE '0802%';

--  Show staff whose phone number ends with '90'
SELECT [Full Name], [Phone Number], Department, Position
FROM Staffs
WHERE [Phone Number] LIKE '%90';

--  Show top 3 most recently hired staff
SELECT TOP 3 [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
ORDER BY [Date Hired] DESC;

--  Show top 3 earliest hired staff
SELECT TOP 3 [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
ORDER BY [Date Hired] ASC;

--  Sort staff by department then by hire date ascending
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
ORDER BY Department ASC, [Date Hired] ASC;

--  Sort staff by position then by full name descending
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
ORDER BY Position ASC, [Full Name] DESC;

-- Show staff in Operations hired in January
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE Department = 'Operations'
  AND MONTH([Date Hired]) = 1
  AND YEAR([Date Hired]) = 2025;

--  Count staff hired per month
SELECT MONTH([Date Hired]) AS Hire_Month, COUNT(*) AS Staff_Count
FROM Staffs
GROUP BY MONTH([Date Hired])
ORDER BY Hire_Month;

--  Count staff per department hired in January
SELECT Department, COUNT(*) AS Staff_Count
FROM Staffs
WHERE MONTH([Date Hired]) = 1 AND YEAR([Date Hired]) = 2025
GROUP BY Department;

--  Show staff not in Operations
SELECT [Full Name], Department, Position, [Phone Number], [Date Hired]
FROM Staffs
WHERE Department <> 'Operations';

--  Show staff hired on odd-numbered days of month
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE DAY([Date Hired]) % 2 = 1;

--  Show staff hired on even-numbered days of month
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE DAY([Date Hired]) % 2 = 0;

--Show staff hired this month dynamically
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE MONTH([Date Hired]) = MONTH(GETDATE())
  AND YEAR([Date Hired]) = YEAR(GETDATE());

--Show staff hired last month dynamically
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE MONTH([Date Hired]) = MONTH(DATEADD(MONTH,-1,GETDATE()))
  AND YEAR([Date Hired]) = YEAR(DATEADD(MONTH,-1,GETDATE()));

--Show staff hired before today
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE [Date Hired] < GETDATE();

-- 2??9?? Show staff hired after today
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE [Date Hired] > GETDATE();

--Show staff hired within last 7 days
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE [Date Hired] >= DATEADD(DAY,-7,GETDATE());

--  Count staff hired per department in February
SELECT Department, COUNT(*) AS Staff_Count
FROM Staffs
WHERE MONTH([Date Hired]) = 2 AND YEAR([Date Hired]) = 2025
GROUP BY Department;

--  Show staff hired before 20th February
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE [Date Hired] < '2025-02-20';

--  Show staff hired between 10th and 25th March
SELECT [Full Name], [Date Hired], Department, Position
FROM Staffs
WHERE [Date Hired] BETWEEN '2025-03-10' AND '2025-03-25';

--  Show staff in HR with phone starting '0806'
SELECT [Full Name], [Phone Number], Department, Position
FROM Staffs
WHERE Department = 'HR' AND [Phone Number] LIKE '0806%';

-- 3 Show staff in Finance not hired in January
SELECT [Full Name], Department, Position, [Date Hired]
FROM Staffs
WHERE Department = 'Finance' AND MONTH([Date Hired]) <> 1;

--  Show staff sorted by tenure descending (longest-serving first)
SELECT [Full Name], Department, Position, [Date Hired],
       DATEDIFF(DAY, [Date Hired], GETDATE()) AS Tenure_Days
FROM Staffs
ORDER BY Tenure_Days DESC;


