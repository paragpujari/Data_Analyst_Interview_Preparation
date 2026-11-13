---------------------------------------------------------------------DISTINCT------------------------------------------------------------------------------------------------
/*
	DISTINCT	------>	It helps in fetching all the unique records from the database table.

	Syntax:--

	SELECT DISTINCT col1, col2,....,coln FROM table_name;
*/
-------------------------------------------------------------------Solved Examples-------------------------------------------------------------------------------------------
---1.	Display all unique employee departments
SELECT DISTINCT department AS Unique_department FROM Employees WHERE department IS NOT NULL
---2.	Display all unique cities where employees work
SELECT DISTINCT city AS Unique_city FROM Employees WHERE city IS NOT NULL
---3.	Display unique combinations of department and city
SELECT DISTINCT department,city FROM Employees
---4.	Display all unique payment modes
SELECT DISTINCT payment_mode AS Unique_payment_modes FROM Payments1
---5.	Display all unique product categories
SELECT DISTINCT category AS Unique_categories FROM products
----------------------------------------------------------------Coding Interview Questions----------------------------------------------------------------------------------
---1.	Display all unique employee statuses
SELECT DISTINCT status AS Unique_employee_status FROM Employees
---2.	Display all unique employee birth dates
SELECT DISTINCT birth_date AS Unique_employee_birth_dates FROM Employees
---3.	Display all unique employee hire dates
SELECT DISTINCT Hire_Date  AS Unique_employee_hire_date FROM Employees
---4.	Display all unique customer cities
SELECT DISTINCT city AS Unique_customer_city FROM customers
---5.	Display all unique order customer IDs
SELECT DISTINCT customer_id AS Unique_order_customer_id FROM orders
---6.	Display all unique order dates
SELECT DISTINCT order_date AS Unique_order_dates FROM orders
---7.	Display all unique product prices
SELECT DISTINCT price AS Unique_product_price FROM products
---8.	Display all unique product categories and product names combinations
SELECT DISTINCT category,product_name FROM products
---9.	Display all unique combinations of payment mode and payment status
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---10.	Display all unique combinations of employee department, city, and status
SELECT DISTINCT department,city,status FROM Employees
-------------------------------------------------------------Analytical Scenario Based Interview Questions-----------------------------------------------------------------
---1.	The HR team wants to identify how many different departments are currently represented in the Employees table. Write a SQL query to calculate the total number of unique employee departments, excluding NULL values
SELECT COUNT(DISTINCT department) AS Total_departments FROM Employees WHERE department IS NOT NULL
---2.	The business team wants to understand how many different cities have customers registered in the Customers table. Write a SQL query to calculate the number of unique customer cities.
SELECT COUNT(DISTINCT city) AS Total_cities FROM customers
---3.	The finance team wants to identify how many different payment methods have been recorded in the Payments1 table. Write a SQL query to calculate the number of unique payment modes.
SELECT COUNT(DISTINCT payment_mode) AS Total_unique_payment_modes FROM Payments1
---4.	The product management team wants to identify the total number of unique product categories available in the Products table. Write a SQL query to calculate the number of distinct product categories.
SELECT COUNT(DISTINCT category) AS Total_distinct_categories FROM products
---5.	The sales team wants to identify how many different customers have placed orders. The Orders table contains multiple orders from the same customer. Write a SQL query to calculate the total number of unique customers present in the Orders table.
SELECT COUNT(DISTINCT customer_id) AS Total_customers FROM orders