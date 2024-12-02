select c.name
from customers as c
inner join legal_person as lp
on lp.id_customers = c.id