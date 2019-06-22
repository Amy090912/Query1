select invoices.invid 
from invoices 
where invoices.amount= cast(1.2*(select sum(details.qty*products.price) 
                                 from details left join products on details.pcode=products.pcode 
								 where invoices.ordid=details.ordid 
								 group by details.ordid) as decimal(10,2));

