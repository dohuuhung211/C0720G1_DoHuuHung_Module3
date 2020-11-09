SELECT * FROM demo.user;
create database demo2;
create table users(
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