-----------------------------------------------------------TOP----------------------------------------------------------------------------------------------------
/*
	TOP ----------->  It helps in fetching the top 'n' number of records from the database table.

	Syntax:---

	SELECT TOP 'N' * FROM table_name
*/
------------------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------------------
---1.	Display all customers sorted by customer name alphabetically
SELECT * FROM customers ORDER BY customer_name ASC
---2.	Display all products sorted by price from lowest to highest
SELECT * FROM products ORDER BY price ASC
---3.	Display all employees sorted by salary from highest to lowest
SELECT * FROM Employees ORDER BY salary DESC
---4.	Display all orders sorted by order date from oldest to newest
SELECT * FROM orders ORDER BY order_date ASC
---5.	Display all employees sorted by employee name in reverse alphabetical order
SELECT * FROM Employees ORDER BY emp_name DESC

-----------------------------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------
---6.	Display products sorted by category alphabetically and then by price from lowest to highest
SELECT * FROM products ORDER BY category,price
---7.	Display employees sorted by department alphabetically and salary from highest to lowest within each department
SELECT * FROM Employees WHERE department IS NOT NULL ORDER BY department ASC, salary DESC
---8.   Display orders sorted by customer ID in ascending order and order amount in descending order
SELECT * FROM orders ORDER BY customer_id ASC, order_amount DESC
---9.	Display employees sorted by city alphabetically and employee name alphabetically within each city
SELECT * FROM Employees ORDER BY city ASC, emp_name ASC
---10.	Display orders sorted by order date from newest to oldest and order amount from lowest to highest for matching dates
SELECT * FROM orders ORDER BY order_date DESC, order_amount ASC

----------------------------------------------Analytical Based Interview Questions-----------------------------------------------------------------------
---11.	A business wants to see its most expensive products first. If two products have the same price, sort them alphabetically by product name
SELECT * FROM products ORDER BY price DESC,product_name ASC
---12.	HR wants to display employees by hire date, showing the most recently hired employee first
SELECT * FROM Employees ORDER BY Hire_Date desc
---13.	A sales manager wants to see orders grouped by customer ID, with the highest-value orders first for each customer
SELECT * FROM orders ORDER BY customer_id ASC,order_amount DESC
---14.	HR wants employees sorted by status alphabetically, then department alphabetically, and finally salary from highest to lowest
SELECT * FROM Employees WHERE department IS NOT NULL ORDER BY status ASC,department ASC,salary DESC
---15.	An inventory manager wants products sorted by category in reverse alphabetical order, and by product price from highest to lowest within each category
SELECT * FROM products ORDER BY category DESC,price DESC

----------------------------------------------Coding Based Interview Questions-----------------------------------------------------------------------
---16.	Sort customers by city in ascending order. If two customers have the same city, sort them by customer name in descending order
SELECT * FROM customers ORDER BY city ASC,customer_name DESC
---17.	Sort all orders by order amount from lowest to highest. If two orders have the same amount, show the most recent order first
SELECT * FROM orders ORDER BY order_amount ASC,order_date DESC
---18.	Display employees by department ID in ascending order, then salary in descending order, and then employee name in ascending order
SELECT * FROM Employees WHERE dept_id IS NOT NULL ORDER BY dept_id ASC,salary DESC,emp_name ASC
---19.	Sort payments by payment status alphabetically and payment ID from highest to lowest within each status
SELECT * FROM Payments1 ORDER BY payment_status ASC,payment_id DESC
---20.	Sort products by category alphabetically, product name alphabetically, and price from highest to lowest
SELECT * FROM products ORDER BY category ASC,product_name ASC,price DESC


----------------------------------------------Interview Related Questions-----------------------------------------------------------------------------
---21.	Retrieve the top 3 most expensive products including ties
SELECT TOP (3) WITH TIES * FROM products ORDER BY price DESC
---22.	Display the top 5 highest-paid employees including ties
SELECT TOP (5) WITH TIES * FROM Employees ORDER BY salary DESC
---23.	Display the 5 most recent orders including ties
SELECT TOP (5) WITH TIES * FROM orders ORDER BY order_date DESC
---24.	Display the top 5 customers based on total order amount, including ties in descending order
SELECT TOP (5) WITH TIES customer_id,SUM(order_amount) AS Total_order_amount FROM orders GROUP BY customer_id ORDER BY 2 DESC
---25.	Display the top 3 highest-paid employees in each department
;with cte as(
SELECT *,DENSE_RANK()OVER(PARTITION BY department ORDER BY salary DESC) AS ranks FROM Employees WHERE salary IS NOT NULL
)
SELECT * FROM cte WHERE ranks <= 3