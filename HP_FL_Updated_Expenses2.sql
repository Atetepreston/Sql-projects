USE HP_FL 
SELECT * FROM Expenses;

---SHOW ALL EXPENSES IN JANUARY---
SELECT * FROM Expenses
WHERE date_of_expense BETWEEN '2024-01-01' AND '2024-01-31'
ORDER BY date_of_expense;

---SHOW ALL EXPENSES ABOVE 50,500---
SELECT id, date_of_expense, description, amount
FROM Expenses
WHERE amount > 1000
ORDER BY amount DESC;

---SEARCH FOR ANY EXPENSE THAT CONTAINS 'FUEL'
SELECT * FROM Expenses
WHERE description LIKE '%fuel%'
ORDER BY date_of_expense DESC;

---SORT ALL EXPENSES FROM HIGHEST TOO LOWEST AMOUNT---
SELECT *
FROM Expenses
ORDER BY amount DESC;

---SHOW TOTAL SPENT PER CATEGORY---
SELECT category, SUM(amount) AS total_spent
FROM Expenses
GROUP BY category
ORDER BY total_spent DESC;

---SHOW ---HOW MUCH WE SPENT EACH MONTH---
SELECT FORMAT(date_of_expense, 'yyyy-MM') AS Month,
       SUM(amount) AS Total
FROM Expenses
GROUP BY FORMAT(date_of_expense, 'yyyy-MM')
ORDER BY Month;

---SHOW ALL EXPENSES FOR JANUARY ONLY---
SELECT * FROM Expenses
WHERE FORMAT(date_of_expense, 'yyyy-MM')='2024-01';

---SEARCH FOR IN DESCRIPTION COLUMN THAT CONTAINS THE WORD REPAIR---
SELECT* FROM Expenses
WHERE description LIKE '%Staff transport%';

---SHOW TOTAL SPENDING PER DAY---
SELECT date_of_expense,
       SUM(amount) AS Total
FROM Expenses
GROUP BY date_of_expense
ORDER BY date_of_expense;

---SHOW TOTAL SPENDING PER STAFF---
SELECT recorded_by,
       SUM(amount) AS Total_Spent
FROM Expenses
GROUP BY recorded_by
ORDER BY Total_Spent DESC;

---USING BETWEEN FILTER ALL EXPENSES BETWEEN 20000 AND 100000
SELECT *
FROM Expenses
WHERE amount BETWEEN 20000 AND 100000;

---SHOW ALL EXPENSES FROM FEBUARY AND MARCH ONLY---
SELECT *
FROM Expenses
WHERE FORMAT(date_of_expense,'yyyy-MM') IN ('2024-02','2024-03');




