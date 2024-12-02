select p.name
from products as p
inner join providers as f
on f.id = p.id_providers
where (amount between 10 and 20) and (f.name like 'P%')