--------------------------------------------------ORDER BY -----------------------------------------------------------------------------------------------
/*
	ORDER BY statement	------------->	It arranges the records either in ascending or descending order

	Syntax:---
	SELECT column1, column2 FROM table_name ORDER BY column_name ASC;

	Syntax:---
	SELECT column1, column2 FROM table_name ORDER BY column_name DESC;

	Syntax:---
	SELECT column1, column2 FROM Employees ORDER BY department ASC, salary DESC;

	Syntax:---
	SELECT column1, column2 FROM Products ORDER BY category ASC, price ASC, product_name DESC;
*/
-------------------------------------Accenture Interview Questions----------------------------------------------------------------------------------------
---1.	Using the Customers table, write an SQL query to display all customer records sorted by customer_name in alphabetical order (A to Z)
SELECT * FROM customers ORDER BY customer_name 
---2.	Using the Products table, write an SQL query to display all products sorted by price from highest to lowest
SELECT * FROM products ORDER BY price desc
-------------------------------------PwC Interview Questions-----------------------------------------------------------------------------------------------
---3.	Using the Orders table, write an SQL query to display all orders sorted by order_date from the newest date to the oldest date
SELECT * FROM orders ORDER BY order_date DESC
---4.	
/*
Using the Employees table, write an SQL query to display all employee records sorted by:
1. department in ascending order.
2. salary in descending order.
*/
SELECT * FROM Employees ORDER BY department, salary DESC
---5.
/*
Using the Products table, write an SQL query to display all products sorted by:
1. category in ascending order.
2. price in descending order.
3. product_name in ascending order
*/
SELECT * FROM products ORDER BY category , price desc, product_name

---------------------------------------Deloitte Advanced SQL Scenarios------------------------------------------------------------------------------------
---6. 
/*
Using the Employees table, write an SQL query to display all employee records sorted by:
1. Department in alphabetical order.
2. City in alphabetical order.
3. Salary from highest to lowest.
*/
SELECT * FROM Employees ORDER BY department,city,salary desc
---7.
/*
An e-commerce company wants to prepare a chronological order report.

Using the Orders table, write an SQL query to display all orders sorted by:
1. customer_id in ascending order.
2. order_date in descending order.
3. order_amount in descending order.
*/
SELECT * FROM orders ORDER BY customer_id, order_date desc, order_amount desc
---8.
/*
An e-commerce company wants to arrange its product catalogue for business reporting.

Using the Products table, write an SQL query to display all product records sorted by:
1. category in descending alphabetical order.
2. price in ascending order.
3. product_name in descending alphabetical order.
4. product_id in ascending order
*/
SELECT * FROM products ORDER BY category, price, product_name desc, product_id

---------------------------------------------E&Y Interview Questions----------------------------------------------------------------------------------------
---9. 
/*
The HR department wants to prepare a salary report.

Using the Employees table, write an SQL query to display:
- Employee name
- Department
- Salary
- City
Sort the records by salary from highest to lowest
*/
SELECT emp_name, department, salary,city FROM Employees ORDER BY salary DESC
---10.
/*
An organization wants to prepare a detailed employee compensation report.

Using the Employees table, write an SQL query to display all employees sorted by:
1. Department in ascending order.
2. Salary in descending order.
3. Hire date from oldest to newest.
*/
SELECT * FROM Employees ORDER BY department,salary desc, Hire_Date
