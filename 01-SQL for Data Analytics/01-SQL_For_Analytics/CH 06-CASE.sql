------------------------------------------------------------CASE Statements--------------------------------------------------------------------------------------------------
/*
	1.	Display employee name, salary, and salary category.

Conditions:
- Salary greater than or equal to 150000 → High Salary
- Salary greater than or equal to 100000 → Medium Salary
- Salary below 100000 → Low Salary
- NULL salary → Not Available
*/
SELECT emp_name,salary,CASE WHEN salary >= 150000						THEN	'High Salary' 
							WHEN salary >= 100000 AND salary < 150000	THEN	'Medium Salary'	
							WHEN salary >= 0      AND salary < 100000	THEN	'Low Salary'
																		ELSE	'Not Available'
																		END  AS  Salary_Category
							FROM Employees 
							ORDER BY salary

/*
	2.	Display employee name, department, and department category.

Conditions:
- IT → Technical Department
- HR → Human Resources
- Finance → Financial Department
- Marketing → Marketing Department
- NULL → Department Not Assigned
- Other departments → Other Department
*/

SELECT emp_name, department, CASE WHEN department = 'IT'		THEN	'Technical Department'	
								  WHEN department = 'HR'		THEN	'Human Resources' 
								  WHEN department = 'Finance'	THEN	'Financial Department'	
								  WHEN department = 'Marketing'	THEN	'Marketing Department'
								  WHEN department IS NULL		THEN	'Department Not Assigned'	
																ELSE	'Other Department'
																END AS   department_category
								  FROM Employees 
								  ORDER BY department

/*
	3.	Display order ID, customer ID, order amount, and order category.

Conditions:
- Negative amount → Refund / Negative Order
- 0 → Zero Value Order
- 1–999 → Small Order
- 1000–2999 → Medium Order
- 3000 and above → Large Order
*/

SELECT order_id, customer_id, order_amount,CASE WHEN order_amount >= 3000						   THEN	'Large Order' 
												WHEN order_amount >= 1000 AND order_amount <= 2999 THEN 'Medium Order' 
												WHEN order_amount >= 1    AND order_amount <= 999  THEN 'Small Order'
												WHEN order_amount = 0                              THEN 'Zero Value Order'
																								   ELSE 'Negative Order'
																								   END AS Order_category
												FROM orders 
												ORDER BY order_amount

/*
4.	Display payment ID, order ID, payment mode, payment status, and payment category.

Conditions:
- Success → Payment Completed
- Pending → Awaiting Payment
- Failed → Payment Failed
- Other values → Unknown Status
*/

SELECT payment_id, order_id,payment_mode,payment_status, CASE WHEN payment_status = 'Success'	THEN	'Payment Completed' 
															  WHEN payment_status = 'Pending'   THEN    'Awaiting Payment'
															  WHEN payment_status = 'Failed'    THEN    'Payment Failed'
																								ELSE    'Unknown Status'
																								END AS Payment_Category
															  FROM Payments1 
															  ORDER BY payment_status

/*
	5.	Display product name, category, price, and price classification.

Conditions:
- Price below 1000 → Budget Product
- 1000–9999 → Standard Product
- 10000–49999 → Premium Product
- 50000 and above → Luxury Product
*/
SELECT product_name, category, price,CASE WHEN price >= 50000	THEN	'Luxury Product'	
										  WHEN price >= 10000 AND price <= 49999 THEN 'Premium Product' 
										  WHEN price >= 1000  AND price <= 9999  THEN 'Standard Product'
																				 ELSE 'Budget Product'
																				 END AS price_classification
										  FROM products
										  ORDER BY price DESC
-------------------------------------------------------Coding Interview Questions--------------------------------------------------------------------------------------
/*
1.	Display employee name, salary, and salary classification.

Conditions:
- Salary above or equal 150000 → Very High
- Salary between 100000 and 149999 → High
- Salary between 60000 and 99999 → Average
- Salary below 60000 → Low
- NULL → Not Available
*/

SELECT *,CASE WHEN salary >= 150000							THEN	'Very High' 
			  WHEN salary >= 100000 AND salary < 150000		THEN	'High'
			  WHEN salary >= 60000  AND salary < 100000     THEN    'Average'
			  WHEN salary > 0      AND salary < 60000	    THEN	'Low'
															ELSE    'Not Available'
															END AS salary_clssification
			  FROM Employees 
			  ORDER BY salary DESC
/*
2.	Display employee name, status, and employment category.

Conditions:
- Active → Currently Working
- Inactive → Not Currently Working
- NULL → Status Unknown
*/

SELECT emp_name,status, CASE WHEN status = 'Active'	  THEN	'Currently Working' 
							 WHEN status = 'Inactive' THEN  'Not Currently Working'
													  ELSE   'Status Unknown'
													  END AS Employment_Category
							 FROM Employees 
							 ORDER BY status
/*
3.	Display customer name, city, and city category.

Conditions:
- Hyderabad → Telangana
- Bangalore → Karnataka
- Mumbai → Maharashtra
- Delhi → Delhi NCR
- Other cities → Other Locations
*/
SELECT customer_name,city, CASE WHEN city = 'Hyderabad'	THEN	'Telangana'
                                WHEN city = 'Bangalore' THEN    'Karnataka'
								WHEN city = 'Mumbai'	THEN    'Maharashtra'
								WHEN city = 'Delhi'		THEN    'Delhi NCR'
														ELSE    'Other Locations'
														END AS  City_category
								FROM customers 
								ORDER BY city

/*
4. Display product name, category, and product type.

Conditions:
- Electronics → Electronic Product
- Furniture → Furniture Product
- Accessories → Accessory Product
- Appliances → Home Appliance
- Stationery → Stationery Product
*/
SELECT product_name, category, CASE WHEN category = 'Electronics'	THEN	'Electronic Product'	
								    WHEN category = 'Furniture'		THEN	'Furniture  Product'
									WHEN category = 'Accessories'   THEN	'Accessory  Product'
									WHEN category = 'Appliances'    THEN	'Home Appliance'
																	ELSE    'Stationery Product'
																	END AS Product_type
									FROM products ORDER BY category
/*
	5.	Using Hire_Date, classify employees into:
- Hired before 2023 → Experienced Employee
- Hired during 2023 → 2023 Recruit
- Hired during 2024 → 2024 Recruit
- Hired during 2026 → 2026 Recruit
Display employee name, Hire_Date, and classification.
*/
SELECT emp_name,Hire_Date,CASE WHEN YEAR(Hire_Date) < '2023'	THEN	'Experienced Employee'	
							   WHEN YEAR(Hire_Date) = '2023'    THEN    '2023 Recruit'
							   WHEN YEAR(Hire_Date) = '2024'    THEN    '2024 Recruit'
							                                    ELSE    '2026 Recruit'
																END AS Hire_classification
							   FROM Employees ORDER BY Hire_Date
/*
6.	Display order ID, order amount, and risk category.

Conditions:
- Negative amount → Refund Risk
- Amount below 500 → Low Value
- Amount between 500 and 1999 → Medium Value
- Amount between 2000 and 4999 → High Value
- Amount 5000 or above → Very High Value
*/
SELECT *,CASE WHEN order_amount >= 5000								THEN	'Very High Value'	
              WHEN order_amount >= 2000 AND order_amount < 5000		THEN	'High   Value'
			  WHEN order_amount >= 500  AND order_amount < 2000		THEN	'Medium Value'
			  WHEN order_amount >= 0    AND order_amount < 500		THEN	'Low    Value'
																	ELSE    'Refund Risk'
																	END AS Risk_category
			  FROM orders 
			  ORDER BY order_amount DESC
/*
7.	Display payment ID, payment mode, and payment mode category.

Conditions:
- UPI → Digital Payment
- Credit Card → Card Payment
- Debit Card → Card Payment
- Cash → Offline Payment
- Net Banking → Online Banking
- Other → Unknown Payment Mode
*/
SELECT payment_id, payment_mode, CASE WHEN payment_mode = 'UPI'				THEN	'Digital Payment'	
									  WHEN payment_mode = 'Credit Card'		THEN	'Card    Payment'
									  WHEN payment_mode = 'Debit Card'		THEN	'Card    Payment'
									  WHEN payment_mode = 'Cash'	    	THEN	'Offline Payment'
									  WHEN payment_mode = 'Net Banking'	    THEN	'Online  Banking'
																			ELSE    'Unknown Payment Mode'
									                                        END AS payment_mode_category
									  FROM Payments1 ORDER BY payment_mode
/*
8.	Display employee name, department, salary, and employee category.

Conditions:
- IT and salary above 150000 → IT High Earner
- IT and salary below 150000 → IT Employee
- HR → HR Employee
- Finance → Finance Employee
- Marketing → Marketing Employee
- NULL department → Department Not Assigned
*/

SELECT emp_name, department,salary,CASE WHEN (department = 'IT' AND salary >= 150000)	THEN	'IT High Earner'
										WHEN (department = 'IT' AND salary <  150000)	THEN    'IT Employee'	
										WHEN (department = 'HR')                     	THEN    'HR Employee'
										WHEN (department = 'Finance')                   THEN    'Finance Employee'
										WHEN (department = 'Marketing')                 THEN    'Marketing Employee'
																						ELSE	'Department Not Assigned'
																						END AS  Employee_category
										FROM Employees ORDER BY salary DESC
/*
9.	Display product name, price, and discount.

Conditions:
- Price above 50000 → 20% discount
- Price between 10000 and 50000 → 15% discount
- Price between 1000 and 9999 → 10% discount
- Price below 1000 → 5% discount	
*/
SELECT product_name, price, CASE WHEN price >= 50000						THEN	(price*0.20)
								 WHEN price >= 10000  AND price < 50000		THEN	(price*0.15)
								 WHEN price >= 1000   AND price < 10000     THEN    (price*0.10)
																		    ELSE    (price*0.05)
																			END AS  discount
								 FROM products ORDER BY price DESC
/*
10.	Display employee name, department, salary, email, and data quality status.

Conditions:
- Department NULL and salary NULL → Multiple Missing Fields
- Department NULL → Department Missing
- Salary NULL → Salary Missing
- Email NULL → Email Missing
- All three fields available → Complete Record
*/
SELECT emp_name,department,salary,email,CASE WHEN (department IS NULL AND salary IS NULL)	THEN	'Multiple Missing Fields'
                                             WHEN (department IS NULL)						THEN	'Department Missing'
											 WHEN (salary IS NULL)                          THEN	'Salary Missing'
											 WHEN (email IS NULL)                           THEN    'Email Missing'
																							ELSE    'Complete Record'
																							END AS  Data_Quality_Status
											 FROM Employees ORDER BY salary
---------------------------------------------------------Analytical Scenario Based Questions----------------------------------------------------------------------------
/*
1.	The HR department wants to identify employees according to their salary levels.

Using the Employees table, write a query to display:
1. Employee name.
2. Department.
3. Salary.
4. Salary classification.
5. HR action recommendation.
Classification:
Salary		Classification	HR Action
Above 150000	High	    Retention Priority
100000–150000	Medium	    Performance Review
60000–99999	    Average	    Salary Evaluation
Below 60000	    Low		    Compensation Review
NULL	        Unknown	    Salary Verification
*/

SELECT *,CASE WHEN salary >= 150000								THEN	'High' 
              WHEN salary >= 100000  AND salary < 150000		THEN	'Medium' 
			  WHEN salary >= 60000   AND salary < 100000		THEN	'Average' 
			  WHEN salary <  60000								THEN    'Low'
			                                                    ELSE    'Unknown'
																END AS Classification,
         CASE WHEN salary >= 150000								THEN	'Retention Priority' 
              WHEN salary >= 100000  AND salary < 150000		THEN	'Performance Review' 
			  WHEN salary >= 60000   AND salary < 100000		THEN	'Salary Evaluation' 
			  WHEN salary <  60000								THEN    'Compensation Review'
			                                                    ELSE    'Salary Verification'
																END AS HR_Action_Recommendation
		FROM Employees ORDER BY salary DESC
/*
2.	An e-commerce company wants to identify payment records requiring attention.

Using Payments1, display:
1. Payment ID.
2. Order ID.
3. Payment mode.
4. Payment status.
5. Payment risk level.
6. Recommended action.

Conditions:
Payment status	 Risk level	          Recommended action
Success	          Low Risk				No Action Required
Pending	          Medium Risk			Follow Up
Failed	          High Risk				Investigate Payment
Other	          Unknown				Manual Verification

Use CASE statements for risk level and recommended action.
*/
SELECT payment_id, order_id, payment_mode, payment_status,CASE WHEN payment_status = 'Success'	THEN	'Low    Risk'
                                                               WHEN payment_status = 'Pending'	THEN	'Medium Risk'
															   WHEN payment_status = 'Failed'	THEN	'High   Risk'
																								ELSE    'Unknown'
																								END AS  Risk_Level,
                                                          CASE WHEN payment_status = 'Success'	THEN	'No Action Required'
                                                               WHEN payment_status = 'Pending'	THEN	'Follow Up'
															   WHEN payment_status = 'Failed'	THEN	'Investigate Payment'
																								ELSE    'Manual Verification'
																								END AS  Recommended_action
														  FROM Payments1 ORDER BY payment_status
/*
3.	The sales department wants to classify customers' individual orders according to order value.

Using Orders, display:
1. Order ID.
2. Customer ID.
3. Order amount.
4. Customer order segment.
5. Business recommendation.
Conditions:

Order amount			Segment					Recommendation
Negative				Refund Case			    Verify Refund
0						No Value				Investigate Order
Below 1000				Small Customer Order	Standard Service
1000–2999				Medium Customer Order	Promotional Offer
3000–4999				Premium Customer Order	Priority Support
5000 and above			VIP Customer Order		Dedicated Support

Use CASE statements to produce both additional columns.
*/
SELECT *,CASE WHEN order_amount >= 5000										THEN	'VIP Customer Order'	
              WHEN order_amount >= 3000		AND   order_amount < 5000		THEN	'Premium Customer Order'
			  WHEN order_amount >= 1000		AND   order_amount < 3000		THEN	'Medium  Customer Order'
			  WHEN order_amount >  0		AND   order_amount < 1000       THEN	'Small   Customer Order'
			  WHEN order_amount =  0										THEN	'No Value'
																			ELSE    'Refund Case'
																			END  AS  Segment,
		 CASE WHEN order_amount >= 5000										THEN	'Dedicated Support'	
              WHEN order_amount >= 3000		AND   order_amount < 5000		THEN	'Priority Support'
			  WHEN order_amount >= 1000		AND   order_amount < 3000		THEN	'Promotional Offer'
			  WHEN order_amount >  0		AND   order_amount < 1000       THEN	'Standard Service'
			  WHEN order_amount =  0										THEN	'Investigate Order'
																			ELSE    'Verify Refund'
																			END  AS  Segment
		 FROM orders ORDER BY order_amount DESC
/*
4. A retail company wants to classify its products to decide pricing strategies.

Using Products, display:
1. Product name.
2. Product category.
3. Price.
4. Price segment.
5. Business pricing strategy.
Conditions:

Product price    	Segment	       Pricing strategy
Below 1000	         Budget			Mass Marketing
1000–9999	         Standard		Competitive Pricing
10000–49999	         Premium		Premium Marketing
50000 and above	     Luxury			High-End Positioning

Write a query using CASE statements for both classification columns.
*/
SELECT product_name,category, price, CASE WHEN price >= 50000						THEN	'Luxury'	 
                                          WHEN price >= 10000	AND price < 50000	THEN	'Premium'
										  WHEN price >= 1000 	AND price < 10000	THEN	'Standard'
																					ELSE    'Budget'
																					END AS  Segment,
									 CASE WHEN price >= 50000						THEN	'High-End Positioning'	 
                                          WHEN price >= 10000	AND price < 50000	THEN	'Premium Marketing'
										  WHEN price >= 1000 	AND price < 10000	THEN	'Competitive Pricing'
																					ELSE    'Mass Marketing'
																					END AS  Pricing_Strategy
										  FROM products ORDER BY price DESC 
/*
5.	The HR data management team wants to identify incomplete employee records.

Using Employees, display:
1. Employee ID.
2. Employee name.
3. Department.
4. Salary.
5. Email.
6. Data completeness category.
7. Required corrective action.
Conditions:
Data condition							Completeness category	Corrective action
Department, salary and email all NULL	Critical Missing Data	Complete All Fields
Department NULL							Incomplete Department	Update Department
Salary NULL								Incomplete Salary		Update Salary
Email NULL								Incomplete Email		Update Email
All fields available					Complete Record			No Action Required

Use CASE statements to classify the records.
*/
SELECT emp_id,emp_name,department,salary,email,CASE WHEN (department IS NULL AND salary IS NULL AND email IS NULL)	THEN	'Critical Missing Data'
                                                    WHEN (department IS NULL)										THEN	'Incomplete Department'
													WHEN (salary     IS NULL)										THEN	'Incomplete Salary'
													WHEN (email     IS NULL)										THEN	'Incomplete Email'
													                                                                ELSE    'Complete Record'
																													END AS  Completeness_category,
											   CASE WHEN (department IS NULL AND salary IS NULL AND email IS NULL)	THEN	'Complete All Fields'
                                                    WHEN (department IS NULL)										THEN	'Update Department'
													WHEN (salary     IS NULL)										THEN	'Update Salary'
													WHEN (email     IS NULL)										THEN	'Update Email'
													                                                                ELSE    'No Action Required'
																													END AS  Corrective_action
												
												FROM Employees ORDER BY salary DESC