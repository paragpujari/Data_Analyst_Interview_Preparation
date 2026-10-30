-------------------------------------------------------IN / NOT IN----------------------------------------------------------------------------------------------------------
/*
	IN	---------->	It checks if the particular element exists in the given list

	NOT IN	------>	It checks if the particular element is not present in the given list
*/
----------------------------------------------------------Examples----------------------------------------------------------------------------------------------------------
---1.	Retrieve customers who belong to Mumbai, Delhi, and Hyderabad
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi','Hyderabad')
---2.	Retrieve customers who do not belong to Mumbai, Delhi, or Hyderabad
SELECT * FROM customers WHERE city NOT IN ('Mumbai','Delhi','Hyderabad')
---3.	Retrieve employees whose department ID is 101, 102, or 103
SELECT * FROM Employees WHERE dept_id IN ('101','102','103')
---4.	Retrieve products whose product IDs are not 1, 2, 3, or 4
SELECT * FROM products WHERE product_id NOT IN ('1','2','3','4') ORDER BY product_id
---5.	Retrieve orders with amounts of 500, 1100, 1600, or 5000
SELECT * FROM orders WHERE order_amount IN ('500','1100','1600','5000') ORDER BY order_date

----------------------------------------------------------Accenture Interview Questions-------------------------------------------------------------------------------------
---1.	Retrieve customers who belong to Mumbai, Delhi, and Pune using the IN operator
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi','Pune')
---2.	Retrieve customers who do not belong to Hyderabad, Chennai, or Bangalore using NOT IN
SELECT * FROM customers WHERE city NOT IN ('Hyderabad','Chennai','Bangalore')
---3.	Retrieve employees whose department is IT, HR, or Finance
SELECT * FROM Employees WHERE department IN ('IT','HR','Finance') ORDER BY salary
---4.	Retrieve products whose category is Electronics or Furniture
SELECT * FROM products WHERE category IN ('Electronics','Furniture') ORDER BY price
---5.	Retrieve orders whose order amounts are 500, 1000, 2000, or 5000
SELECT * FROM orders WHERE order_amount IN ('500','1000','2000','5000') ORDER BY order_amount

---------------------------------------------------------PwC Interview Questions--------------------------------------------------------------------------------------------
---6.	Retrieve employees whose employee IDs are 1, 3, 5, 7, or 9
SELECT * FROM Employees WHERE emp_id IN ('1','3','5','7','9') ORDER BY emp_id
---7.	Retrieve employees who do not belong to IT or Finance departments
SELECT * FROM Employees WHERE department NOT IN ('IT','Finance') ORDER BY salary
---8.	Retrieve customers whose cities are Ahmedabad, Jaipur, Kolkata, or Lucknow.
SELECT * FROM customers WHERE city IN ('Ahmedabad','Jaipur','Kolkata','Lucknow')
---9.	Retrieve products whose product IDs are not 1, 3, 5, or 7.
SELECT * FROM products WHERE product_id NOT IN ('1','3','5','7') ORDER BY product_id
---10.	Retrieve orders whose customer IDs are 101, 102, 104, or 108.
SELECT * FROM orders WHERE customer_id IN ('101','102','104','108') ORDER BY customer_id

---------------------------------------------------------Deloitte Interview – Analytical Problem-Solving Questions-----------------------------------------------------------
---11.	Retrieve all orders placed by customers whose customer IDs are 101, 103, 105, or 108
SELECT * FROM orders WHERE customer_id IN ('101','103','105','108') ORDER BY customer_id
---12.	Retrieve orders whose order amounts are not 500, 1000, 1500, or 2000
SELECT * FROM orders WHERE order_amount NOT IN ('500','1000','1500','2000') ORDER BY order_amount
---13.	Retrieve employees whose department IDs are not 101, 103, or 104
SELECT * FROM Employees WHERE dept_id NOT IN ('101','103','104') ORDER BY dept_id
---14.	Retrieve products belonging to Electronics, Appliances, or Accessories categories, using IN
SELECT * FROM products WHERE category IN ('Electronics','Appliances','Accessories') ORDER BY price
---15.	Retrieve all orders belonging to customer IDs 101, 102, or 103, excluding orders with IDs 1, 3, 5, or 8 using NOT IN
SELECT * FROM orders WHERE customer_id IN ('101','102','103') AND order_id NOT IN ('1','3','5','8') ORDER BY order_id

------------------------------------------------------EY Interview Questions--------------------------------------------------------------------------------------------------
---16.	Retrieve customers who belong to Noida, Ranchi, Vijayawada, or Visakhapatnam.
SELECT * FROM customers WHERE city IN ('Noida','Ranchi','Vijayawada','Visakhapatnam')
---17.  Retrieve employees whose cities are not Delhi, Mumbai, or Bangalore.
SELECT * FROM Employees WHERE city NOT IN ('Delhi','Mumbai','Bangalore') ORDER BY salary
---18.  Retrieve orders whose order IDs are 301, 302, 303, 304, or 305.
SELECT * FROM orders WHERE order_id IN ('301','302','303','304','305') ORDER BY order_id
---19.  Retrieve products whose product names are Laptop, Smartphone, Printer, or Headphones.
SELECT * FROM products WHERE product_name IN ('Laptop','Smartphone','Printer','Headphones') ORDER BY price
---20.  Retrieve employees whose department IDs are 101, 102, or 103, excluding employee IDs 1, 3, and 5.
SELECT * FROM Employees WHERE dept_id IN ('101','102','103') AND emp_id NOT IN ('1','3','5') ORDER BY dept_id, emp_id

------------------------------------------------------Amgen Interview Questions-----------------------------------------------------------------------------------------------
---21.	Retrieve orders belonging to customer IDs 101, 102, 103, 104, or 105, excluding order IDs 1, 2, 3, and 4.
SELECT * FROM orders WHERE customer_id IN ('101','102','103','104','105') AND order_id NOT IN ('1','2','3','4')
---22.	Retrieve employees whose department names are represented by department IDs 101, 102, or 104.
SELECT * FROM Employees WHERE dept_id IN ('101','102','104') ORDER BY dept_id
---23.	Retrieve products whose categories are not Stationery, Furniture, or Accessories.
SELECT * FROM products WHERE category NOT IN ('Stationery','Furniture','Accessories') ORDER BY price
---24.	Retrieve orders whose order amounts are 1800, 2100, 2700, 4000, or 5000, excluding order IDs 31 and 32.
SELECT * FROM orders WHERE order_amount IN ('1800','2100','2700','4000','5000') AND order_id NOT IN ('31','32') ORDER BY order_amount
---25.	Retrieve employees whose employee IDs are 1, 3, 5, 7, 9, or 11, excluding employees whose department IDs are 102 or 104
SELECT * FROM Employees WHERE emp_id IN ('1','3','5','7','9','11') AND dept_id NOT IN ('102','104') ORDER BY emp_id