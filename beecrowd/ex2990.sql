select cpf, enome, dnome
from empregados
inner join departamentos
on empregados.dnumero = departamentos.dnumero
where cpf not in 
    (select distinct cpf_emp from trabalha)
order by cpf