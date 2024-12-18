select l.name, cast(l.omega * 1.618 as numeric(10, 3)) 
from life_registry as l
inner join dimensions as d
on l.dimensions_id = d.id
where (d.name = 'C875' or d.name = 'C774')
and l.name like 'Richard%'
order by l.omega 