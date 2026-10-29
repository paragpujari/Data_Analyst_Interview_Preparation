---------------------------------------------------AND OR NOT ----------------------------------------------------------------------------------------------------\\
/*
	AND	-------------->	It returns all the rows when all the conditions are specified.

	OR	-------------->	It returns the rows when either of the conditions are specified.

	NOT	-------------->	It reverses the conditions and returns the opposite result.
*/
---------------------------------------------------------------------Examples--------------------------------------------------------------------------
---1.	Find employees who work in IT and are Active
SELECT * FROM Employees WHERE department = 'IT' AND status = 'Active' ORDER BY salary
---2.	Find customers who live in Delhi or Mumbai
SELECT * FROM customers WHERE city = 'Delhi' OR city = 'Mumbai'
---3.	Find employees who are not in the HR department
SELECT * FROM Employees WHERE NOT department = 'HR' ORDER BY salary
---4.	Find active employees who work in either IT or Finance
SELECT * FROM Employees WHERE status = 'Active' AND (department = 'IT' OR department = 'Finance') ORDER BY salary
---5.	Find orders with an amount above ₹1,000 that do not have a negative order amount
SELECT * FROM orders WHERE order_amount > 1000 and NOT order_amount < 0 ORDER BY order_amount

--------------------------------------Accenture Interview Questions-------------------------------------------------------------------------------------
---1.	Write a query to find customers who live in Delhi AND whose customer_id is greater than 100.
SELECT * FROM customers WHERE city = 'Delhi' AND customer_id > 100
---2.   Write a query to find customers who live in Mumbai OR Pune.
SELECT * FROM customers WHERE city = 'Mumbai' OR city = 'Pune'
---3.   Write a query to find employees whose department is IT AND whose status is Active.
SELECT * FROM Employees WHERE department = 'IT' AND status = 'Active' ORDER BY salary
---4.   Write a query to find products whose category is Electronics OR Furniture.
SELECT * FROM products WHERE category IN ('Electronics') OR category IN ('Furniture') ORDER BY price
---5.   Write a query to find employees whose department is NOT HR
SELECT * FROM Employees WHERE NOT department = 'HR' ORDER BY salary

--------------------------------------PwC Interview Questions-------------------------------------------------------------------------------------
---6. Write a query to find employees whose department is IT AND whose salary is greater than ₹100,000.
select * from Employees WHERE (department = 'IT')AND (salary > 100000) ORDER BY salary
---7. Write a query to find orders whose order_amount is less than ₹1,000 OR greater than ₹4,000.
SELECT * FROM orders WHERE order_amount < 1000 OR order_amount > 4000 order by order_amount
---8. Write a query to find employees whose city is Delhi AND whose status is NOT Inactive.
SELECT * FROM Employees WHERE city = 'Delhi' AND NOT status = 'Inactive' ORDER BY salary
---9. Write a query to find payments whose payment_mode is UPI OR Cash.
SELECT * FROM Payments1 WHERE payment_mode = 'UPI' OR payment_mode = 'Cash'
---10. Write a query to find products that are NOT in the Electronics category AND whose price is below ₹10,000
SELECT * FROM products WHERE NOT category = 'Electronics' AND price < 10000 order by price

------------------------------------Deloitte Analytical problem-solving questions--------------------------------------------------------------------
---11. Write a query to find employees who are Active AND whose department is IT OR Finance. Use parentheses to express the intended condition: Active employees in either department.
SELECT * FROM Employees WHERE status = 'Active' AND (department = 'IT' OR department = 'Finance') ORDER BY salary;
---12. Write a query to find orders placed on or after 1 July 2026 AND whose order_amount is greater than ₹2,000 OR exactly ₹500. Use parentheses to group the amount conditions.
SELECT * FROM orders WHERE order_date >= '2026-07-01' AND (order_amount > 2000 OR order_amount = 500) ORDER BY order_amount
---13. Write a query to find employees whose department is NOT HR AND whose salary is greater than ₹60,000.
SELECT * FROM Employees WHERE NOT department = 'HR' AND salary > 60000 ORDER BY salary
---14. Write a query to find payments whose payment_status is Success AND whose payment_mode is UPI OR Cash. Use parentheses to ensure both payment modes are restricted to successful payments.
SELECT * FROM Payments1 WHERE payment_status = 'Success' AND (payment_mode = 'UPI' OR payment_mode = 'Cash') 
---15. Write a query to find orders whose order_amount is greater than ₹1,000 AND whose order_id is NOT 10 OR 17. Use parentheses to make the intended exclusion logic explicit.
SELECT * FROM orders WHERE order_amount > 1000 AND NOT(order_id IN (10,17)) ORDER BY order_date

-----------------------------------------------E&Y Interview Questions----------------------------------------------------------------------------------
---16.	Write a query to find employees whose department is IT AND whose salary is greater than ₹110,000 AND whose status is Active
SELECT * FROM Employees WHERE department = 'IT' AND salary > 110000 AND status = 'Active' ORDER BY salary
---17.	Write a query to find customers who live in Delhi OR Mumbai OR Hyderabad
SELECT * FROM customers WHERE city = 'Delhi' OR city = 'Mumbai' OR city = 'Hyderabad'
---18.	Write a query to find products whose category is NOT Stationery AND whose price is greater than ₹1,000
SELECT * FROM products WHERE NOT category = 'Stationery' AND price > 1000 ORDER BY price
---19.	Write a query to find employees who are NOT in HR AND are located in either Bangalore or Pune
SELECT * FROM Employees WHERE NOT department = 'HR' AND (city = 'Bangalore' OR city = 'Pune') ORDER BY salary
---20.	Write a query to find orders whose order_amount is NOT negative AND whose amount is below ₹1,000 OR above ₹4,000. Use parentheses to make the intended logic clear
SELECT * FROM orders WHERE NOT order_amount < 0 AND (order_amount < 1000 OR order_amount > 4000) ORDER BY order_amount

-----------------------------------------------Amgen Interview Questions----------------------------------------------------------------------------------
---21.	Write a query to find employees who belong to Finance AND work in Delhi
SELECT * FROM Employees WHERE department = 'Finance' AND city = 'Delhi' ORDER BY salary
---22.	Write a query to find orders whose order_amount is greater than ₹2,000 AND whose order_date is in July 2026
SELECT * FROM orders WHERE (order_amount > 2000) AND (order_date >= '2026-07-01' AND order_date <= '2026-07-31') order by order_date 
---23.	Write a query to find payments whose status is Pending OR Failed, but NOT Success
SELECT * FROM Payments1 WHERE (payment_status = 'Pending' OR payment_status = 'Failed') AND NOT payment_status = 'Success'
---24.	Write a query to find employees whose department is IT AND whose status is Active AND whose city is NOT Delhi
SELECT * FROM Employees WHERE department = 'IT' AND status = 'Active' AND NOT city = 'Delhi' ORDER BY salary
---25.	Write a query to find products that are in Electronics OR Appliances AND whose price is greater than ₹10,000. Use parentheses to specify whether the price condition applies to both categories
SELECT * FROM products WHERE (category = 'Electronics' OR category = 'Appliances') AND price > 10000 ORDER BY price