create table users(
users_id int auto_increment primary key,
users_name varchar(50),
password varchar(225),
email varchar(255) 
);
CREATE TABLE roles(
   role_id INT AUTO_INCREMENT,
   role_name VARCHAR(50),
   PRIMARY KEY(role_id)
);
drop table roles, users, userroles;
CREATE TABLE userroles(
   users_id INT NOT NULL,
   role_id INT NOT NULL,
   PRIMARY KEY(users_id,role_id),
   FOREIGN KEY(users_id) REFERENCES users(users_id),
   FOREIGN KEY(role_id) REFERENCES roles(role_id)
);
ALTER TABLE users
ADD PRIMARY KEY(users_name);