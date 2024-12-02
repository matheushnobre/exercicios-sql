select prod.name, prov.name, c.name
from products as prod
inner join providers as prov
on prov.id = prod.id_providers
inner join categories as c
on c.id = prod.id_categories
where prov.name = 'Sansul SA' and c.name = 'Imported'