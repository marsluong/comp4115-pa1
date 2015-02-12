select customers.customerName, productName from products 
join orderdetails on products.productCode = orderdetails.productCode 
join orders on orderdetails.orderNumber = orders.orderNumber 
join customers on orders.customerNumber = customers.customerNumber 
where customers.customerNumber = 415;



select employees.employeeNumber, sum(payments.amount) from payments 
join customers on customers.customerNumber = payments.customerNumber 
join employees on employees.employeeNumber = customers.salesRepEmployeeNumber 
where employeeNumber = 1501;

	

select employeeNumber,firstName,lastName from employees where reportsTo = 1102;



select count(customerNumber) from customers where salesRepEmployeeNumber in 
(select employeeNumber from employees where officeCode = 5);



select jobTitle,lastName, firstName from employees 
right outer join customers on customers.salesRepEmployeeNumber = employees.employeeNumber;



select employeeNumber,firstName,lastName, customerName from employees 
join customers on employeeNumber = salesRepEmployeeNumber;



select distinct(customerName), salesRepEmployeeNumber from customers 
left join employees on salesRepEmployeeNumber = employeeNumber union
select customerName, salesRepEmployeeNumber from customers
right join employees on salesRepEmployeeNumber = employeeNumber;



select customerName, customerNumber,(select max(amount) from payments)
from customers where customerNumber in 
(select customernumber from payments where amount = 
(select max(amount) from payments));   

	

select customers.customerName, products.productName, productlines.productLine
from productlines
join products on products.productLine = productlines.productLine
join orderdetails on products.productCode = orderdetails.productCode
join orders on orderdetails.orderNumber = orders.orderNumber
join customers on orders.customerNumber = customers.customerNumber
where customers.customerName = 'FunGiftIdeas.com';