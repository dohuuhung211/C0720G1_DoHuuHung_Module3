SELECT * FROM demo.user;
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
    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
END //
DELIMITER ;