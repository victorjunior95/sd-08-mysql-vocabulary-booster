select jobs.JOB_TITLE as 'Cargo', (jobs.MAX_SALARY - jobs.MIN_SALARY) as 'Variação Salarial',
round((jobs.MIN_SALARY / 12) , 2) as 'Média mínima mensal',
round((jobs.MAX_SALARY / 12 ), 2) as 'Média máxima mensal'
from hr.jobs as jobs  order by`Variação Salarial`, Cargo;
