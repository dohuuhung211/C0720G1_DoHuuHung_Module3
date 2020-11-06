create database demo;
use demo;
create table users(
id int(3) not null auto_increment,
name varchar(45) not null,
email varchar(45) not null,
country varchar(45),
primary key(id)
);
insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');