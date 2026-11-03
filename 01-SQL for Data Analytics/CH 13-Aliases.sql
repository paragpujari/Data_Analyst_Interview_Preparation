-------------------------------------------------------Aliases--------------------------------------------------------------------------------------------
/*
	Aliases ---------->	It provides an alternate name to a particular column name in the table.
*/
-------------------------------------------------Basic Level Interview Questions---------------------------------------------------------------------
---1.	Display all customer names with the heading Customer Name
SELECT customer_name AS [Customer Name] FROM customers
---2.	Display employee names with the heading Employee
SELECT emp_name AS [Employee] FROM [Employees]
---3.	Display product names with the heading Item
SELECT product_name AS [Item] FROM products
---4.	Display customer IDs with the heading ID
SELECT customer_id AS[ID] FROM customers
---5.	Display employee salaries with the heading Monthly Salary
SELECT salary AS [Monthly Salary] FROM Employees

--------------------------------------------------Business Scenario Based Questions------------------------------------------------------------------
---1.	A company wants to generate a payroll report displaying employee ID, employee name, department, and salary using the headings Staff ID, Staff Name, Department Name, and Monthly Salary. Use E as the table alias
SELECT E.emp_id AS [Staff ID], E.emp_name AS [Staff Name], E.department AS [Department Name], E.salary AS [Monthly Salary] FROM Employees E ORDER BY 1 
---2.	A business wants to display customer name, order ID, order date, and order amount using the headings Customer Name, Transaction ID, Purchase Date, and Total Amount. Use C for Customers and O for Orders.
SELECT c.customer_name AS [customer name]	, o.order_id AS [Transaction ID],  o.order_date AS [Purchase Date], o.order_amount AS [Total Amount]
FROM customers c
JOIN orders    o
ON   c.customer_id = o.customer_id
ORDER BY 1
---3.	An inventory team needs product ID, product name, category, and price displayed under Product Code, Item Name, Product Type, and Selling Price. Use P as the table alias
SELECT p.product_id	AS [Product Code], p.product_name AS [Item Name], p.category AS [Product Type], p.price AS [Selling Price] FROM products P ORDER BY 1
---4.	HR wants an employee directory displaying employee name, email, department, and city using the headings Employee Name, Official Email, Team Name, and Work Location. Use E as the table alias
SELECT E.emp_name AS [Employee Name], E.email AS [Official Email], E.department AS [Team Name], E.city AS [Work Location] FROM Employees E ORDER BY 1
---5.   The finance team needs payment ID, order ID, payment mode, and payment status displayed under Payment Reference, Order Reference, Payment Method, and Transaction Status. Use Pay as the table alias
SELECT Pay.payment_id AS [Payment Reference], Pay.order_id AS [Order Reference], Pay.payment_mode AS [Payment Method] , Pay.payment_status  AS [Transaction Status] FROM Payments1 Pay ORDER BY 1
-----------------------------------------------Intermediate Level Interview Questions---------------------------------------------------------------
---6.	Display employee names and salaries with the headings Name and Pay
SELECT emp_name	AS	Name,salary AS Pay FROM Employees
---7.	Display product names, categories, and prices using the headings Product, Type, and Cost
SELECT product_name AS Product, category AS Type, price AS Cost  FROM products
---8.	Use C as the table alias for Customers and display customer names
SELECT C.customer_name FROM customers C
---9.	Use E as the table alias for Employees and display employee names and departments
SELECT E.emp_name, E.department FROM Employees E
---10.	Use P as the table alias for Products. Display product IDs and names with the headings ID and Product Name
SELECT P.product_id AS [ID],P.product_name AS [Product Name] FROM products P

------------------------------------------Analytical Based Interview Questions---------------------------------------------------------------------
---11.	A business report requires employee name, department, and salary under the headings Staff Name, Team, and Annual Pay
SELECT emp_name	AS	[Staff Name],department	AS	[Team],salary	AS	[Annual Pay] FROM Employees
---12.	A customer report requires customer ID, customer name, and city under Customer ID, Full Name, and Location
SELECT customer_id	AS	[Customer ID], customer_name	AS	[Full Name],city	AS	[Location] FROM customers
---13.	A sales report requires order ID, customer ID, order date, and order amount under readable headings
SELECT o.order_id AS [Order ID], o.customer_id AS [Customer ID], o.order_date AS [Order Date], o.order_amount AS [Order Amount] FROM orders o ORDER BY [Order ID]
---14.	An employee directory requires employee name, email address, and employment status under Name, Email Address, and Employment Status
SELECT emp_name AS [Name]	,	email AS [Email Address], status AS [Employment Status] FROM Employees
---15.	A payment report requires payment ID, order ID, payment mode, and payment status under business-friendly headings
SELECT p.payment_id AS [Payment ID], p.order_id AS [Order ID], p.payment_status AS [Payment Status], p.payment_mode AS [Payment Mode] FROM Payments1 p

------------------------------------------Coding Based Interview Questions-------------------------------------------------------------------------
---16.	Write a query to display every employee's ID, name, and city using the aliases ID, Employee Name, and Work City. Use Emp as the table alias
SELECT Emp.emp_id AS [Employee ID], Emp.emp_name AS [Employee Name], Emp.city AS [Work City] FROM Employees Emp ORDER BY 1
---17.	Write a query to display every product's ID, name, category, and price using Product ID, Product Name, Product Category, and Product Price. Use Pr as the table alias
SELECT Pr.product_id AS [Product ID], Pr.product_name AS [Product Name] , Pr.category AS [Product Category], Pr.price AS [Product Price] FROM products Pr ORDER BY 1
---18.	Write a query to display all orders using the aliases Transaction ID, Customer ID, Transaction Date, and Transaction Amount. Use Ord as the table alias
SELECT Ord.order_id AS [Transaction ID], Ord.customer_id AS [Customer ID], Ord.order_date AS [Transaction Date], Ord.order_amount AS [Transaction Amount] FROM Orders Ord ORDER BY 1
---19.	Write a query to display all department IDs and department names using the aliases Department Code and Department Name. Use D as the table alias
SELECT D.dept_id AS [Department Code], D.dept_name AS [Department Name] FROM Departments D
---20.	Write a query to display all payment details using the aliases Payment Reference, Order Reference, Payment Method, and Payment Result. Use Pay as the table alias
SELECT Pay.payment_id AS [Payment Reference], Pay.order_id AS [Order Reference], Pay.payment_mode AS [Payment Method], Pay.payment_status AS [Payment Result] FROM Payments1 Pay