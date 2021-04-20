select jobs.JOB_TITLE as Cargo,
(jobs.MAX_SALARY - jobs.MIN_SALARY) as `Variação Salarial`,
round(min(employees.salary), 2) as `Média mínima mensal`,
round(max(employees.salary), 2) as `Média máxima mensal`
from hr.jobs jobs inner join hr.employees employees
on employees.JOB_ID = jobs.JOB_ID group by Cargo order by `Variação Salarial`, Cargo;
