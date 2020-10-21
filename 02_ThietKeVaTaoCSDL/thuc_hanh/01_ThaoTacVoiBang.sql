create table contact(
contact_id int(11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthday date,
constraint contact_pk primary key(contact_id)
);

create table suppliers(
suppliers_id int(11) not null auto_increment,
suppliers_name varchar(50) not null,
account_rep varchar(30) not null default 'TBD',
constraint suppliers_pk primary key(suppliers_id)
);

drop table contact, suppliers;
alter table contact
change column abc_name middle_name varchar(20) not null;
alter table contact
add abc_name varchar(40) not null
after last_name;
alter table contact
rename to people;
alter table contact
modify last_name varchar(50) null;



