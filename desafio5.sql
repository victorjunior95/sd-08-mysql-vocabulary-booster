select job_title as 'Cargo', 
max_salary - min_salary as `Variação Salarial`,
round(avg(min_salary / 12),2) as `Média mínima mensal`,
round(avg(max_salary / 12),2) as `Média máxima mensal`
from jobs
group by Cargo
order by `Variação Salarial`, Cargo;
