
with temp_table(ptype, cid, sum_qty) as 
  (select products.ptype, orders.ocust, sum(details.qty) 
   from details left join orders on details.ordid=orders.ordid left join products on details.pcode=products.pcode 
   group by products.ptype, orders.ocust)
select a.ptype, a.cid
from temp_table a 
inner join (select ptype, max(sum_qty) as sum_qty from temp_table group by ptype)b on a.ptype=b.ptype and a.sum_qty=b.sum_qty;
