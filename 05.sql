
select customers.custid, count(distinct Orders.ordid), cast(sum(details.qty*products.price)/count(distinct Orders.ordid) as decimal(10,2)) average_cost
from customers left join orders on customers.custid=orders.ocust left join details on orders.ordid=details.ordid left join products on details.pcode=products.pcode
group by customers.custid;