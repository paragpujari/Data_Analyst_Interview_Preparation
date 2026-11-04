---------------------------------------------------------Date Time Functions-------------------------------------------------------------------------------------
/*
	DATE ---------->	It returns the date from the given date time value

	TIME ---------->	It returns the time from the given date time value

	GETDATE()	--->	It returns the current date and time

	DATETIME ------>	It returns the DATETIME value

	DATEPART ------>	It extracts the day/month/year from the given date in integer form and returns them

	DATENAME ------>	It returns the date/month/year from the given date in string format 

	DATEADD	------->	It adds one day to each given date

	DATEDIFF ------>	It finds out the difference between two given dates

	EOMONTH ------->	It returns the last day of the month for each order date

	WEEKDAY	------->	It returns the weekday of the given date

	DATEFROMPARTS -----> It helps in constructing the date from day, month and year

*/
-----------------------------------------------------------------Basic Level Interview Questions----------------------------------------------------------------------
---1.	Extract the year from each order date
SELECT order_date, YEAR(order_date) as Years FROM orders ORDER BY 1
---2.	Extract the month number from each order date
SELECT order_date, MONTH(order_date) AS Months FROM orders ORDER BY 1
---3.	Extract the day of the month from each order date
SELECT order_date, DAY(order_date) AS Day FROM orders ORDER BY 1
---3.	Extract the day of the month from each order date using DATEPART
SELECT order_date,DATEPART(DAY,order_date) AS Day FROM orders ORDER BY 1
---4.	Display the current date and time
SELECT GETDATE() AS Current_datetime
---5.	/*----------Get only date-----------------*/
SELECT CONVERT(DATE,GETDATE()) AS Current_dates
---6.	/*----------Get only time-----------------*/
SELECT CONVERT(TIME,GETDATE()) AS Current_times
---7.	Display the month name for each order date
SELECT order_date,DATENAME(MONTH,order_date) AS Month_names FROM orders ORDER BY 1
---8.	Add one day to each order date
SELECT order_date, DATEADD(DAY,1,order_date) as new_order_date FROM orders ORDER BY 1
---9.	Get the difference between the two given dates
;with cte as(
SELECT order_date, DATEADD(DAY,1,order_date) as new_order_date FROM orders
)
SELECT *,DATEDIFF(DAY,order_date, new_order_date) as total_days FROM cte
---10.	Get how many days has an employee worked till now
;with cte as(
SELECT Hire_Date,CONVERT(DATE,GETDATE()) AS current_dates FROM Employees 
)
SELECT *,DATEDIFF(DAY,Hire_Date,current_dates) AS Total_days
FROM cte

------------------------------------------------------Intermediate Level Interview Questions----------------------------------------------------------------------
--11.	Find the date 7 days after every order date
SELECT order_date, DATEADD(DAY,7,order_date) as new_order_date FROM orders ORDER BY 1
---12.	Find the date 10 days before every order date
SELECT order_date,DATEADD(DAY,-10,order_date) as new_order_date FROM orders ORDER BY 1
---13.	Calculate the number of days between each order date and June 1, 2026
SELECT '2026-06-01', order_date, DATEDIFF(DAY,CONVERT(DATE,'2026-06-01'),order_date) AS Total_days FROM orders ORDER BY 3
---14.	Find the last day of the month for every order date
SELECT order_date,EOMONTH(order_date) as last_day FROM orders ORDER BY 1
---15.	Display the year, quarter, month number, and weekday name for each order
SELECT order_date, DATEPART(YEAR,order_date) AS years, DATEPART(QUARTER,order_date) AS quarters, DATEPART(MONTH, order_date) as months, DATEPART(WEEKDAY,order_date) AS Weekdays FROM orders ORDER BY 1
---16.	Write a SQL query to find the first order date for each customer
;with cte as(
SELECT customer_id, order_date,DENSE_RANK()OVER(PARTITION BY customer_id ORDER BY order_date) AS ranks FROM orders
)
SELECT * FROM cte WHERE ranks = 1
---17.	Write a SQL query to find orders placed during the last 3 months
SELECT order_date,* FROM orders WHERE order_date >= DATEADD(MONTH, -3, GETDATE())  ORDER BY 1
---18.	Write a SQL query to calculate the number of working days (excluding Saturdays and Sundays) between an employee's Hire_Date and today

---19.	Write a SQL query to find employees who have completed 6 months in the company as of today
SELECT Hire_Date,* FROM Employees WHERE Hire_Date >= DATEADD(MONTH,-6,CONVERT(DATE,GETDATE())) ORDER BY 1
---20.	Write a SQL query to identify customers who placed multiple orders on the same date
SELECT customer_id, order_date, COUNT(order_id) as multiple_orders FROM orders GROUP BY customer_id, order_date HAVING COUNT(order_id) >= 1

----------------------------------------------------Analytical Problem Solving Based Interview Questions-----------------------------------------------------------
---21.	Display only orders placed in June 2026
SELECT * FROM orders WHERE order_date >= '2026-06-01' AND order_date <= '2026-06-30' order by order_date
---22.	Find orders placed during the last 7 days of June 2026
SELECT * FROM orders WHERE order_date >= DATEADD(DAY,-7,EOMONTH(order_date)) AND order_date <= EOMONTH(order_date) ORDER BY order_date
---23.	Find orders placed on weekends
;with cte as(
SELECT *,DATENAME(WEEKDAY,order_date) AS day_week FROM orders 
)
SELECT * FROM cte WHERE day_week IN ('Satusday','Sunday') ORDER BY order_date
---24.	Find orders placed in the first 10 days of each month
;with cte as(
SELECT *,DATEPART(DAY,order_date) as days FROM orders   
) 
SELECT * FROM cte WHERE days BETWEEN 1 AND 10 ORDER BY order_date
---25.	Calculate the expected delivery date 5 days after every order
SELECT order_date, DATEADD(DAY,5,order_date) as next_order_date FROM orders ORDER BY 1
---26.	Find orders placed more than 30 days before the current date
SELECT order_date,* FROM orders WHERE order_date < DATEADD(DAY,-30,GETDATE()) ORDER BY 1
---27.	Find employees who joined during 2023
SELECT * FROM Employees WHERE Hire_Date >= '2023-01-01' and Hire_Date <= '2023-12-31' ORDER BY Hire_Date
---28.	Calculate each employee's age in years as of today
SELECT *,DATEDIFF(YEAR,birth_date,CONVERT(DATE,GETDATE())) AS Age FROM Employees ORDER BY 1
---29.	Find the number of days each employee has worked since joining
SELECT *,DATEDIFF(DAY,Hire_Date,CONVERT(DATE,GETDATE())) AS Working_days FROM Employees ORDER BY 1
---30.	Find orders placed on the last day of their respective months
SELECT * FROM orders WHERE order_date = EOMONTH(order_date) ORDER BY order_date

----------------------------------------------------Coding Based Interview Questions---------------------------------------------------------------------------------
---31.	Find orders placed in the current year
SELECT * FROM orders WHERE YEAR(order_date) = YEAR(CONVERT(DATE,GETDATE())) ORDER BY order_date
---32.	Find orders placed in the previous calendar month
SELECT * FROM orders WHERE order_date >= DATEADD(DAY,-30,GETDATE()) ORDER BY order_date
---33.	Find orders placed during the first and last days of any month
SELECT * FROM orders WHERE DATEPART(DAY,order_date) BETWEEN '1' AND DATEPART(DAY,EOMONTH(order_date)) ORDER BY order_date
---34.	Find employees whose birthdays fall in the current month
SELECT * FROM Employees WHERE MONTH(birth_date) = MONTH(CONVERT(DATE,GETDATE()))
---35.	Calculate the next birthday date for each employee
SELECT DATEFROMPARTS(YEAR(CONVERT(DATE, GETDATE()))+1, MONTH(birth_date), DATEPART(DAY,birth_date)) AS next_birthday FROM Employees ORDER BY 1
---36.	Find orders placed exactly 30 days after June 1, 2026
SELECT * FROM orders WHERE order_date >= DATEADD(DAY,30,'2026-06-01') ORDER BY order_date
---37.	Find orders placed in the current quarter
SELECT * FROM orders WHERE DATEPART(QUARTER,order_date) = DATEPART(QUARTER, CONVERT(DATE,GETDATE()))
---38.	Find employees hired within the last 90 days
SELECT * FROM Employees WHERE Hire_Date >= DATEADD(DAY,-90,CONVERT(DATE,GETDATE())) ORDER BY Hire_Date
---39.	Find the first day of the month for each order date
SELECT order_date,DATEFROMPARTS(YEAR(CONVERT(DATE,order_date)),MONTH(CONVERT(DATE,order_date)),'1') AS new_date FROM orders ORDER BY 1
---40.	Find the number of complete months between each employee's hire date and today
SELECT DATEDIFF(MONTH,Hire_Date,CONVERT(DATE,GETDATE())) AS Total_months FROM Employees ORDER BY 1