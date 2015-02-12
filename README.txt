1.	select customers.customerName, productName from products 
	join orderdetails on products.productCode = orderdetails.productCode 
	join orders on orderdetails.orderNumber = orders.orderNumber 
	join customers on orders.customerNumber = customers.customerNumber 
	where customers.customerNumber = 415;

		For this sql query, I am retrieving the names of all the products that customer number 415 (Bavarian Collectables Imports, Co.) have bought. I also retrieved the name of customer 415.


2.	select employees.employeeNumber, sum(payments.amount) from payments 
	join customers on customers.customerNumber = payments.customerNumber 
	join employees on employees.employeeNumber = customers.salesRepEmployeeNumber 
	where employeeNumber = 1501;

		This query sums up all of the sales (money-wise) that employee 1501 have made. 


3.	select employeeNumber,firstName,lastName from employees where reportsTo = 1102;

		Here, I am displaying the employee numbers and names of every employee who reports to employee number 1102.


4.	select count(customerNumber) from customers where salesRepEmployeeNumber in 
	(select employeeNumber from employees where officeCode = 5);

		Using subqueries, this query displays the number of customers that the employees from office number 5 have in total.


5.	select jobTitle,lastName, firstName from employees 
	right outer join customers on customers.salesRepEmployeeNumber = employees.employeeNumber;

		The right outer join displays the names and job titles of employees who are in the employees' table that match as well as nulls for when there is no match.


6.	select employeeNumber,firstName,lastName, customerName from employees 
	join customers on employeeNumber = salesRepEmployeeNumber;

		This inner join query returns the names of the customers that has a sales representative as well as the representative's names.


7.	select distinct(customerName), salesRepEmployeeNumber from customers 
	left join employees on salesRepEmployeeNumber = employeeNumber union
	select customerName, salesRepEmployeeNumber from customers
	right join employees on salesRepEmployeeNumber = employeeNumber;

		Here I am emulating a full join (since it doesn't seem to be working for me) by using left and right joins. The query returns all of the customers and their sales representatives' employee number (including nulls).


8.	select customerName, customerNumber,(select max(amount) from payments)
	from customers where customerNumber in 
	(select customernumber from payments where amount = 
	(select max(amount) from payments));   

		Here I am using subqueries to display the name of the customer, the customer's number, and the amount of the customer with the highest amount spent. I used a query (select max(amount) from payments) in order to display the highest amount spent.


9.	select customers.customerName, products.productName, productlines.productLine
	from productlines
	join products on products.productLine = productlines.productLine
	join orderdetails on products.productCode = orderdetails.productCode
	join orders on orderdetails.orderNumber = orders.orderNumber
	join customers on orders.customerNumber = customers.customerNumber
	where customers.customerName = 'FunGiftIdeas.com';

		I used a lot of inner joins to retrieve the products and the product lines from customer FunGiftIdeas.com. I get to see what they have ordered from "us".
