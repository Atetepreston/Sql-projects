CREATE DATABASE Apex_delivery;
USE Apex_delivery;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY,
    order_id INT,
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM OrderItems;

---Using Joins Genera-Syntax---
SELECT columns
FROM table1
JOIN table2
    ON table1.column = table2.column;
	                                                                                                                                                                                                                                                                                                                                                       
