create table products(
id int,
name nvarchar(50),
umageurl nvarchar(50),
price int,
discount int,
stock int,
categoryld int,
supplierld int,
description nvarchar(50)
);
insert into products(name,umageurl) values(50,1000);
select * from products;