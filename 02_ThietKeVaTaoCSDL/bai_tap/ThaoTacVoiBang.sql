CREATE TABLE contacts
( contact_id INT(11) NOT NULL AUTO_INCREMENT,
  last_name VARCHAR(30) NOT NULL,
  first_name VARCHAR(25),
  birthday DATE,
  CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);
insert into contacts values(1,'Hung','Do',1995/11/22);
select * from contacts;
alter table contacts 
	add age int after last_name;
    insert into contacts values(1,'Hung',25,'Do',1995/11/22);
    select * from contacts;
    
