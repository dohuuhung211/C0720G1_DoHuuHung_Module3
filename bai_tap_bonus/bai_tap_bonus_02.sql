create database bai_tap_bonus_02;
create table categories(
id int primary key auto_increment,
name nvarchar(50) unique not null,
description nvarchar(500)
);

create table suppliers(
id int primary key auto_increment,
names nvarchar(100) not null,
email varchar(50) unique not null,
phoneNumber varchar(50),
address nvarchar(500) not null
);

create table customers(
id varchar(50) primary key,
firstName nvarchar(50) not null,
lastName nvarchar(50) not null,
phoneNumber varchar(50),
address nvarchar(500) not null,
email varchar(50) unique not null,
birthday date
);
create table employees(
id varchar(50) primary key,
firstName nvarchar(50) not null,
lastName nvarchar(50) not null,
phoneNumber varchar(50),
address nvarchar(500) not null,
email varchar(50) unique not null,
birthday date
);
create table product(
id int primary key auto_increment,
name nvarchar(50) not null,
umageUrl nvarchar(1000) not null,
price int not null check(price >= 0) default 0,
discount int not null check(discount between 0 and 100) default 0,
stock int not null default 0,
categoryId int not null,
foreign key(categoryId) references categories(id),
supplierId int not null,
foreign key(supplierId) references suppliers(id),
description blob not null
);
create table orders(
id int primary key auto_increment,
createdDate datetime not null default current_timestamp,
shippedDate datetime,
status varchar(50) default ('WAITING') not null,
description nvarchar(4000),
shippingAddress nvarchar(500) not null,
shippingCity nvarchar(50) not null,
paymentType varchar(20) not null default ('CASH'),
customerId varchar(50) not null,
employeeId varchar(50) not null,
foreign key(customerId) references customers(id),
foreign key(employeeId) references employees(id),
check(shippedDate >= createdDate)
);
create table orderDetails(
id int primary key auto_increment,
orderId int not null,
productId int not null,
quantity int not null,
foreign key(orderId) references orders(id),
foreign key(productId) references product(id)
);