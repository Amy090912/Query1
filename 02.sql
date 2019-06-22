select ptype, cast(cast(sum(details.qty) as decimal(10,2))/cast(count(distinct(details.ordid)) as decimal(10,2)) as decimal(10,2)) average 
from products join details on products.pcode=details.pcode 
group by products.ptype;
