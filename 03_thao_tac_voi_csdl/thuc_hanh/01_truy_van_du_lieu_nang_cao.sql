SELECT * FROM classicmodels.products;
select productcode, productname,buyprice,quantityinstock from products where buyPrice > 56.76 and quantityInStock > 10;
select productcode,productname,buyprice,textdescription 
from products inner join productlines 
on products.productLine = productlines.productLine
where buyprice > 56.76 and buyprice < 95.59;
select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';