DELIMITER //
create procedure findAllCustomers() 
BEGIN
 select * from customers;
END //
DELIMITER ;
call findAllCustomers();