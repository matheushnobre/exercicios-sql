select name, customers_number from lawyers
where customers_number = (select max(customers_number) from lawyers)
union select name, customers_number from lawyers
where customers_number = (select min(customers_number) from lawyers)
union all (select 'Average', round(avg(customers_number), 0) from lawyers);