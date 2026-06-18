/*breakdown of sales overview for 2004*/

select orderDate, quantityOrdered, priceeach, productname, productline, buyPrice, city, country
from orders t1
inner join orderdetails t2
on t1.ordernumber = t2.ordernumber
inner join products t3
on t2.productcode = t3.productcode
inner join customers t4
on t1.customerNumber = t4.customerNumber
where year(orderDate) = 2004;