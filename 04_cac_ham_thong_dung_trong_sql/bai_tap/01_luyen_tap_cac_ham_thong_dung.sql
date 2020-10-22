create table module(
id int,
name varchar(30),
age int not null,
course varchar(20) not null,
totalpay int not null
);
insert into module values(1,'Hoang',21,'cntt',400000);
insert into module values(2,'Viet',19,'dtvt',320000);
insert into module values(3,'Thanh',18,'ktdn',400000);
insert into module values(4,'Nhan',19,'ck',450000);
insert into module values(5,'Huong',20,'tcnh',500000);
insert into module values(5,'Huong',20,'tcnh',200000);
SET SQL_SAFE_UPDATES = 0;
update module set course = ucase(course);
select * from module where name = ('Huong');
select sum(totalpay), name from module where name = 'Huong';
select distinct name from module;