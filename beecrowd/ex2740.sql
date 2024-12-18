select 'Podium: ' || team
from league 
where position between 1 and 3
union all
select 'Demoted: ' || team
from league where position = (select max(position) from league) or position = (select max(position) from league) - 1