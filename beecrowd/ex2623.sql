select p.name, c.name
from products as p
inner join categories as c
on p.id_categories = c.id
where (p.amount > 100)
and ((c.id between 1 and 3) or (c.id = 6) or (c.id = 9))
order by c.id