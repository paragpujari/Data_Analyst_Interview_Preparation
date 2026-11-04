-----------------------------------------------------------Numeric Functions------------------------------------------------------------------------------------------------------
/*
	Numeric Functions are the functions that perform certain mathematical operations on the data.

	Types of Numeric Functions

	(a.)	ABS()	----------->	It returns the absolute value.	Ex:	ABS(-25)	=	25

	(b.)	ROUND()	----------->	It helps in rounding off the value to the nearest value. Ex:	ROUND(25.5) = 26

	(c.)	CEILING()	------->	It rounds off the number to the next highest value.		Ex:		CEILING(25.3) = 26

	(d.)	FLOOR()	----------->	It rounds off the number to the next lower value.		Ex:		FLOOR(12.2) = 12

	(e.)	POWER()	----------->	It calculates the power of the number.					Ex:		POWER(2,3)	=	8

	(f.)	SQRT()	----------->	It returns the square root of the given number			Ex:		SQRT(16)	=	4

	(g.)	SQUARE() ---------->	It returns the square of the given number				Ex:		SQUARE(4)	=	16

	(h.)	SIGN()	----------->	It returns the sign of the given number					Ex:		SIGN(-10)	=	-1

	(i.)	RAND()	----------->	It generates the random number							Ex:		RAND()		=	......random numbers

	(j.)	PI()	----------->	It returns the pi value of the given number				Ex:		PI()		=	3.142

	(k.)	LOG()	----------->	It returns the logarithmic value of the given number	Ex:		LOG(10)

	(l.)	EXP()	----------->	It returns the exponential value of the given number	Ex:		EXP(2)	=	7.345

	(m.)	LOG10()	----------->	It returns the base 10 logarithm of the given number	Ex:		LOG10(100)	=	2

	(n.)	DEGREES()	------->	It converts the radians to degrees						Ex:	DEGREES(PI())	=	180

	(o.)	RADIANS()	------->	It converts the degrees to radians						Ex:	RADIANS(0)	=	3.142
*/
--------------------------------------------------------Examples--------------------------------------------------------------------------------------------------------------
---1.	Find the absolute value of a number(-250)
SELECT ABS(-250) AS Absolute_number;
---2.	Round salary to 2 decimal places
SELECT salary,ROUND(salary,2) as rounded_salary FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---3.	Round salary up to the nearest integer highest
SELECT salary,CEILING(salary) as next_highest_salary FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---4.	Round salary down to the nearest integer
SELECT salary,FLOOR(salary) as next_lowest_salary FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---5.	Calculate the square of employee experience
;with cte as(
SELECT DATEDIFF(YEAR,Hire_Date,CONVERT(DATE,GETDATE())) AS experience  FROM Employees
)
SELECT experience, SQUARE(experience) as Exp_square FROM cte order by 1
---6.	Calculate the square root of salary of every employee
SELECT emp_name,salary,SQRT(salary) as salary_sqrt FROM Employees WHERE salary IS NOT NULL order by 1
---7.	Calculate the square of salary
SELECT salary,SQUARE(salary) as salary_square FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---8.	Identify positive, negative and zero bonus values
SELECT salary,SIGN(salary) as salary_sign FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---9.	Calculate salary after a 15% increment
SELECT emp_name,salary,ROUND(salary*1.15,2) as salary_rounded FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---10.	Calculate the absolute difference between salary and bonus(100000)
SELECT emp_name,salary,ABS(salary-100000) AS Absolute_difference FROM Employees WHERE salary IS NOT NULL ORDER BY 1

------------------------------------------------Basic Level Interview Questions------------------------------------------------------------------------------------------------
---1.	Display the absolute value of each order amount
SELECT order_amount, ABS(order_amount) AS Absolute_order_amount FROM orders ORDER BY 1
---2.	Round product prices to 2 decimal places
SELECT price, ROUND(price,2) as price_rounded FROM products ORDER BY 1
---3.	Round employee salaries upward to the nearest integer
SELECT salary,CEILING(salary) as salary_ceiling FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---4.	Round product prices downward to the nearest integer
SELECT salary,FLOOR(salary) as salary_floor FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---5.	Identify whether each order amount is positive, negative, or zero
SELECT order_amount,SIGN(order_amount) as signed_order_amount FROM orders ORDER BY 1
---6.	Calculate the square of each product's price
SELECT price, SQUARE(price) as price_square FROM products ORDER BY 1
---7.	Calculate the square root of each employee's salary
SELECT salary,SQRT(salary) as salary_sqrt FROM Employees WHERE salary IS NOT NULL order by 1
---8.	Calculate the square of each order amount
SELECT order_amount, SQUARE(order_amount) AS order_amount_squared FROM orders WHERE order_amount IS NOT NULL ORDER BY 1
---9.	Round employee salaries to the nearest 100.
SELECT emp_name,salary,(salary/100.0)*100.0 as salary_rounded FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---10.	Calculate the absolute difference between the  price and (10000) price of each product
SELECT *,ABS(price-100000) AS Absolute_price_difference FROM products ORDER BY 1

------------------------------------------------Intermediate Level Interview Questions------------------------------------------------------------------------------------------------
---11.	Calculate the average order amount for each customer and round the result to 2 decimal places
SELECT customer_id,ROUND(AVG(order_amount),2) AS Average_order_amount FROM orders GROUP BY customer_id ORDER BY 2 DESC
---12.	Calculate the average product price for each category and round it upward to the nearest integer.
SELECT category,CEILING(AVG(price)) AS Average_product_price FROM products GROUP BY category ORDER BY 2 DESC
---13.	Calculate the total sales amount for each customer and round it downward to the nearest 100
SELECT customer_id,FLOOR((SUM(order_amount)*100.0)/100.0) AS Total_sales_amount FROM orders GROUP BY customer_id ORDER BY 2 DESC
---14.	Identify products where the absolute difference between  price and 10000 is greater than 500
SELECT product_name, ABS(price-10000) AS Absolute_difference FROM products WHERE ABS(price-10000)>500 ORDER BY 1
---15.	Calculate the square of each employee's salary and display employees whose squared salary exceeds a specified threshold
SELECT emp_name,salary,SQUARE(salary) as salary_squared  FROM Employees WHERE SQUARE(salary) > 20000000000 and  salary is not null order by 1
---16.	Calculate the square root of the total order amount for each customer
SELECT customer_id,SQRT(SUM(order_amount)) AS Total_order_amount FROM orders GROUP BY customer_id ORDER BY 2 DESC
---17.	Calculate total monthly sales and round the result to 2 decimal places
SELECT YEAR(order_date) AS dates , MONTH(order_date) AS Months,ROUND(SUM(order_amount),2) AS Total_sales FROM orders GROUP BY YEAR(order_date) , MONTH(order_date) ORDER BY 3 DESC
---18.	Display all transactions with a status indicating whether the transaction amount is positive, negative, or zero
SELECT order_id, order_date, order_amount,SIGN(order_amount) as transactions, CASE WHEN SIGN(order_amount) = '1.00' THEN 'Positive'
																				   WHEN SIGN(order_amount) = '-1.00'THEN 'Negative'
																													ELSE 'Zero'
																													END AS Status
																				   FROM  orders 
																				   ORDER BY 1
---19.	Generate a random number for each product and display the product details along with the generated number
SELECT product_name,category,price,RAND(price) AS random_number FROM products ORDER BY 1
---20.	Calculate a 10% increase in product prices and round the result to two decimal places
SELECT product_name,price,ROUND((price*1.10),2) as increased_prices FROM products ORDER BY 1

--------------------------------------Analytical Problem Solving Based Interview Questions------------------------------------------------------------
---21.	Calculate the absolute difference between the highest and lowest product prices
SELECT ABS(MAX(price)-MIN(price)) as absolute_price_difference FROM products ORDER BY 1
---22.	Round employee salaries to the nearest ₹1,000
SELECT salary,ROUND((salary/1000.0)*1000.0,2) as salary_rounded FROM Employees WHERE salary IS NOT NULL ORDER BY 1
---23.	Calculate the total order amount after adding 18% tax, rounded to two decimal places
SELECT SUM(ROUND((order_amount*1.18),2)) AS Total_order_amount FROM orders
---24.	Calculate the absolute value of an order amount after a 12.5% adjustment
SELECT ABS((order_amount*112.5)) AS Absolute_order_amount FROM orders ORDER BY 1
---25.	Round each product's price to the nearest ₹500
SELECT price,ROUND(((price/500.0)*500.0),2) as price_rounded FROM products ORDER BY 1
---26.	Calculate the percentage increase when a product price increases from ₹1,000 to its current price
SELECT 1000,price,ABS(price-1000) as price_increased, (ABS(price-1000)/price)*100.0 as percentage FROM products ORDER BY 2
---27.	Calculate the square of the difference between an employee's salary and ₹75,000
SELECT salary,75000,SQUARE(salary-75000) AS salary_squared_diff FROM Employees ORDER BY 1
---28.	Calculate the geometric distance from the origin for two numeric coordinates(x=3,y=4)
SELECT SQRT(SQUARE(3-0) + SQUARE(4-0)) AS distance
---29.	Calculate compound growth on a product price after three years at 8% annual growth
SELECT price, ROUND(price*POWER(1.08,3),2) AS Compound_price FROM products ORDER BY 1
---30.	Calculate the circular area for a radius of 7 units
SELECT (PI()*SQUARE(7)) AS Circular_area

-------------------------------------------------Coding Based Interview Questions-------------------------------------------------------------------------
---31. Round every order amount to the nearest ten
SELECT order_amount, ROUND((order_amount/10.0)*10.0,2) as order_amount_rounded FROM orders ORDER BY 1
---32.	Round each product price upward to the next multiple of 100
SELECT price, CEILING((price/100.0)*100.0) as price_rounded_up FROM products ORDER BY 1
---33.	Calculate the absolute difference between each product price and ₹10,000
SELECT ABS(price-10000) AS Absolute_price_diff FROM products ORDER BY 1
---34.	Calculate the cube of every product price
SELECT price, POWER(price,3) as price_cube FROM products ORDER BY 1
---35.	Calculate the cube root of a nonnegative number using POWER()
SELECT order_amount,POWER(order_amount,1.0/3.0) as cube_root_order FROM orders WHERE order_amount > 0 ORDER BY 1
---36.	Calculate the base-10 logarithm of every positive product price
SELECT price,LOG10(price) as price_logarithmic FROM products WHERE price > 0 ORDER BY 1
---37.	Calculate the natural logarithm of every positive product price
SELECT price,LOG(price) as price_natural_logarithmic FROM products WHERE price > 0 ORDER BY 1
---38.	Calculate e raised to the power of each product price divided by 10,000
SELECT price, EXP(price/10000) as price_exponent FROM products WHERE price > 0 ORDER BY 1
---39.	Calculate the distance between two points (x1, y1) = (2, 3) and (x2, y2) = (5, 7)
SELECT SQRT(SQUARE(5-2)+SQUARE(7-3)) AS distance
---40.	Calculate a 15% increase on every product price and round upward to the nearest whole unit
SELECT price, CEILING(price*1.15) AS price_upward FROM products WHERE price > 0 ORDER BY 1