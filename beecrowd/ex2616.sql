select c.id, c.name
from customers as c 
left join locations as l 
on l.id_customers = c.id
where l.id_customers is null
order by id