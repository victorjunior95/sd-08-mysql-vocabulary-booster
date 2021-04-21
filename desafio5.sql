select job_title as 'Cargo', 
max_salary - min_salary as `Variação Salarial`,
truncate(avg(min_salary / 12),2) as `Média mínima mensal`,
truncate(avg(max_salary / 12),2) as `Média máxima mensal`
from jobs
group by Cargo
order by `Variação Salarial`, Cargo;
