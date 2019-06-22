select country, count(Orders.ordid) 
from Customers LEFT JOIN Orders ON custid=ocust where odate BETWEEN '2016-01-01' and '2016-12-31' 
or Orders.ordid is NULL 
group by customers.country;
