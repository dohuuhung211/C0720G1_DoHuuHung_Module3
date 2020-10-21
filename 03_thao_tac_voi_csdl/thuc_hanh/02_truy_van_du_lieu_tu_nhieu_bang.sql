select customers.customerNumber, customerName, phone, paymentDate, amount, city
from customers 
inner join payments
on customers.customerNumber = payments.customerNumber
where customers.city = 'Las Vegas';

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber;

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;
