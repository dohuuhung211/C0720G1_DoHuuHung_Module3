CREATE TABLE customers(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(40),
   address VARCHAR(255),
   email VARCHAR(255)
);
CREATE TABLE orders(
   id INT AUTO_INCREMENT,
   staff VARCHAR(50),
   PRIMARY KEY(id),
   customer_id INT,
   FOREIGN KEY (customer_id) REFERENCES customers(id)
);
insert into customers values(1,'Hung','Binh Thai', 'hung@gmail.com');
insert into orders (staff,customer_id) values('HungHa',1);
select * from customers;
select * from orders;