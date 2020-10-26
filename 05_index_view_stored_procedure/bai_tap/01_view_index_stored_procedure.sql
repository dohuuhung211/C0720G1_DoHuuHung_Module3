create database products;
use products;
create table products(
	id int auto_increment primary key,
    productcode varchar(50),
    productname varchar(50),
    productprice int,
    productAmount int,
    productDescription varchar(100),
    productstatus varchar(50)
);
create unique index inx_productCode
on products(productcode);
create index inx_double on product(productName,productPrice);
explain select productCode,productName,productPrice from products;
show index from products;
create view view_products as select * from products;
select * from view_products;
create or replace view view_products as select id, productcode, productname, productPrice, productAmount
from products;
drop view view_products;
delimiter //
create procedure getAllProduct()
begin
	select * from products;
end //
delimiter ;
call getAllProduct;
delimiter //
create procedure addNewProduct(
	id int,
    productcode varchar(50),
    productname varchar(50),
    productprice int,
    productAmount int,
    productDescription varchar(100),
    productstatus varchar(50)
)
begin
	insert into products(productcode,productname,productprice,productAmount,productDescription,productstatus) 
    values(productcode,productname,productprice,productAmount,productDescription,productstatus);
end //
delimiter ;
call addNewProduct(1, 'MSP-001', 'Iphone', 1000, 2, 'alo', 'con hang');

delimiter //
create procedure setInforById(
	setId int,
    setProductcode varchar(50),
    setProductname varchar(50),
    setProductprice int,
    setproductAmount int,
    setproductDescription varchar(100),
    setproductstatus varchar(50))
begin
	update products set
    products.productcode = setProductcode,
    products.productname = setProductName,
    products.productprice = setproductprice,
    products.productAmount = setproductAmount,
    products.productdescription = setproductDescription,
    products.productstatus = setproductstatus 
    where products.id = setId;
end //
delimiter ;
call setInforById(1,'MSP-01','Note 8',800,1,'abcdefgh','het hang');

delimiter //
create procedure delProductById(id int)
begin
	delete from products where products.id = id;
end //
delimiter ;
call delProductById(1);