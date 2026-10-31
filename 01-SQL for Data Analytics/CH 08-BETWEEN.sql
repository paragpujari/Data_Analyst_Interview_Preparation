--------------------------------------------------------------BETWEEN----------------------------------------------------------------------------------------------------------
/*
	BETWEEN ------------> It is used to filter the records between the given range of values.

	Syntax:

	SELECT * FROM table_name WHERE col BETWEEN val1 AND val2


	NOT BETWEEN ---------->	It retrieves values outside the specified range

	Syntax:

	SELECT * FROM table_name WHERE col NOT BETWEEN val1 AND val2
*/
-------------------------------------------------------------Examples-----------------------------------------------------------------------------------------------------------
---1.	An organization wants to identify employees whose salaries are between ₹60,000 and ₹1,20,000
SELECT * FROM Employees WHERE salary BETWEEN 60000 AND 120000 ORDER BY salary
---2.	HR wants employees hired between January 1, 2023 and June 30, 2023
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2023-01-01' AND '2023-06-30' ORDER BY Hire_Date
---3.	An e-commerce company wants products priced between ₹1,000 and ₹15,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 15000 ORDER BY price
---4.	A business wants to identify orders with amounts between ₹1,000 and ₹3,000
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 3000 ORDER BY order_amount
---5.	An organization wants to identify orders placed between June 1 and June 30, 2026, with order amounts between ₹500 and ₹2,000
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-30' AND order_amount BETWEEN 500 AND 2000 ORDER BY order_amount

---------------------------------------Accenture Interview Questions-----------------------------------------------------------------------------------------------------------
---1.	Write a SQL query to retrieve all employees whose salaries are between ₹50,000 and ₹80,000
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 80000 ORDER BY salary
---2.	Write a SQL query to retrieve products whose prices are between ₹1,000 and ₹10,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000 ORDER BY price
---3.	Write a SQL query to retrieve customers whose customer IDs are between 105 and 115
SELECT * FROM customers WHERE customer_id BETWEEN '105' AND '115' ORDER BY customer_id
---4.	Write a SQL query to retrieve all orders whose order amounts are between ₹1,000 and ₹2,500
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 2500 ORDER BY order_amount
---5.	Write a SQL query to retrieve employees hired between January 1, 2023 and December 31, 2023
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2023-01-01' AND '2023-12-31' ORDER BY Hire_Date

-------------------------------------PwC Interview Questions-----------------------------------------------------------------------------------------------------------------
---6.	Retrieve employees whose salaries are between ₹60,000 and ₹1,00,000, including employees earning exactly ₹60,000 and ₹1,00,000
SELECT * FROM Employees WHERE salary BETWEEN 60000 AND 100000 ORDER BY salary
---7.	Retrieve all products whose prices are between ₹500 and ₹15,000
SELECT * FROM products WHERE price BETWEEN 500 AND 15000 ORDER BY price
---8.	Retrieve orders placed between June 1, 2026 and June 15, 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-15' ORDER BY order_date
---9.	Retrieve orders whose order amounts are between -₹100 and ₹1,000
SELECT * FROM orders WHERE order_amount BETWEEN '-100' AND '1000' ORDER BY order_amount
---10.	Retrieve employees hired between June 1, 2023 and December 31, 2023
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2023-01-01' AND '2023-12-31' ORDER BY Hire_Date

-----------------------------------Deloitte Advanced SQL Scenarios-----------------------------------------------------------------------------------------------------------
---11.	An organization wants to identify employees earning between ₹1,00,000 and ₹1,50,000. Write a SQL query to retrieve their complete employee details
SELECT * FROM Employees WHERE salary BETWEEN '100000' AND '150000' ORDER BY salary
---12.	Retrieve orders placed between June 1, 2026 and June 30, 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-30' ORDER BY order_date
---13.	An e-commerce company wants products priced between ₹10,000 and ₹80,000. Write a SQL query to retrieve the matching products
SELECT * FROM products WHERE price BETWEEN '10000' AND '80000' ORDER BY price
---14.	Retrieve employees whose hiring dates fall between January 1, 2023 and December 31, 2024
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2023-01-01' AND '2024-12-31' ORDER BY Hire_Date
---15.	Retrieve orders whose order dates fall between June 1, 2026 and July 10, 2026, and whose order amounts fall between ₹1,000 and ₹3,000
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-07-10' AND order_amount BETWEEN '1000' AND '3000' ORDER BY order_amount

-------------------------------------EY Interview Questions------------------------------------------------------------------------------------------------------------------
---16.	Retrieve employees whose salaries are between ₹70,000 and ₹1,40,000
SELECT * FROM Employees WHERE salary BETWEEN '70000' AND '140000' ORDER BY salary
---17.	Retrieve products whose prices are between ₹1,097.25 and ₹13,860
SELECT * FROM products WHERE price BETWEEN '1097.25' AND '13860' ORDER BY price
---18.	Retrieve customers whose customer IDs are between 110 and 125
SELECT * FROM customers WHERE customer_id BETWEEN '110' AND '125' ORDER BY customer_id
---19.	Retrieve orders placed between July 1, 2026 and July 10, 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-07-01' AND '2026-07-10' ORDER BY order_date
---20.	Retrieve employees whose salaries are between ₹50,000 and ₹1,00,000 and whose hiring dates are between January 1, 2023 and December 31, 2023
SELECT * FROM Employees WHERE salary BETWEEN '50000' and '100000' AND Hire_Date BETWEEN '2023-01-01' AND '2023-12-31' ORDER BY Hire_Date


------------------------------Amgen Interview Questions------------------------------------------------------------------------------------------------------------
---21.	Retrieve employees whose salaries fall between ₹1,00,000 and ₹1,45,000
SELECT * FROM Employees WHERE salary BETWEEN '100000' AND '145000' ORDER BY salary
---22.	Retrieve employees hired between January 1, 2024 and December 31, 2026
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2024-01-01' AND '2026-12-31' ORDER BY Hire_Date
---23.	Retrieve orders whose amounts are between ₹3,000 and ₹5,000
SELECT * FROM orders WHERE order_amount BETWEEN '3000' AND '5000' ORDER BY order_amount
---24.	Retrieve products whose prices fall between ₹2,000 and ₹40,000
SELECT * FROM products WHERE price BETWEEN '2000' AND '40000' ORDER BY price
---25.	A company wants to analyze orders placed between September 1, 2026 and September 30, 2026, with order amounts between ₹4,000 and ₹5,500. Write the SQL query to retrieve the matching records
SELECT * FROM orders WHERE order_date BETWEEN '2026-09-01' AND '2026-09-30' AND order_amount BETWEEN '4000' AND '5500' ORDER BY order_amount