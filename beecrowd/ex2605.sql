select prod.name, prov.name
from products as prod
inner join providers as prov
on prod.id_providers = prov.id and id_categories = 6