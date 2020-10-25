alter table customers add index index_customerNumber(customerNumber);
EXPLAIN SELECT * FROM customers WHERE customerNumber = 175;
alter table customers add index idx_full_name(contactFirstName, contactLastName);
explain select * from customers where contactFirstName = 'Jean' or contactLastName = 'King';
alter table customers drop index idx_full_name;