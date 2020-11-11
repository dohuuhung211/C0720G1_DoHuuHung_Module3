SELECT * FROM demo.user;

create database demo4;
create table user(
id int(3) auto_increment,
name varchar(45) not null,
email varchar(45) not null,
country varchar(45) not null,
primary key(id)
);

delimiter //
create procedure get_user_by_id(in user_id int)
begin
	select user.name, user.email, user.country
    from user where user.id = user.id;
end //
delimiter ;

DELIMITER //
CREATE PROCEDURE insert_user(
IN user_name varchar(50),
IN user_email varchar(50),
IN user_country varchar(50)
)
BEGIN
    INSERT INTO user(name, email, country) VALUES(user_name, user_email, user_country);
END //
DELIMITER ;

create table Permission(
id int(11) primary key,
name varchar(50)
);
create table User_Permission(
permission_id int(11),
user_id int(11)
);
insert into Permission(name) values('add');
insert into Permission(name) values('edit');
insert into Permission(name) values('delete');
insert into Permission(name) values('view');

DELIMITER //
CREATE PROCEDURE get_all_user()
BEGIN
    select * from user;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE edit_user(
username varchar(45),
useremail varchar(45),
usercountry varchar(45),
userid int
)
BEGIN
    update user set name = username, email = useremail, country = usercountry where id = userid;
END //
DELIMITER ;
