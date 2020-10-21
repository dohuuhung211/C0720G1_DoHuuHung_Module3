create database bai_tap;
create table Customers(
customerNumber int auto_increment primary key,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName  varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit float,
salesRepEmployeeNumber int,
foreign key (salesRepEmployeeNumber) references employees(employeeNumber)
);

create table Orders(
orderNumber int auto_increment primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date,
status varchar(15) not null,
comments text,
quantityOrdered int not null,
priceEach float not null,
customerNumber int,
foreign key (customerNumber) references customers(customerNumber)
);

create table payments(
customerNumber int not null auto_increment primary key,
checkNumber varchar(50) not null,
paymentDate date not null,
amount float not null,
foreign key (customerNumber) references customers(customerNumber)
);

create table products(
productCode int auto_increment primary key,
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice float not null,
MSRP float not null,
productLine varchar(50),
foreign key (productLine) references productlines(productLine)
);

create table productlines(
productLine varchar(50) primary key,
textDescription text,
image varchar(50)
);
drop table productlines;
create table employees(
employeeNumber int primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null,
reportTo int,
officeCode varchar(10),
foreign key (reportTo) references employees(employeeNumber),
foreign key (officecode) references offices(officeCode)
);

create table offices(
officeCode varchar(10) primary key,
city varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
state varchar(50),
country varchar(50) not null,
postalCode varchar(15) not null
);

create table OrderDetails(
ordernumber int,
productcode int,
foreign key (ordernumber) references orders(ordernumber),
foreign key (productcode) references products(productcode)
);