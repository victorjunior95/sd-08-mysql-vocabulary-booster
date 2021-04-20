select jobs.JOB_TITLE as Cargo,
round(avg(employees.salary), 2) as `Média salarial`,
case 
when avg(employees.salary) > 1999 and avg(employees.salary) < 5801 then 'Júnior'
when avg(employees.salary) > 5800 and avg(employees.salary) < 7501 then 'Pleno'
when avg(employees.salary) > 7500 and avg(employees.salary) < 10501 then 'Sênior'
else 'CEO'
end as Senioridade
from hr.jobs jobs inner join hr.employees employees
on employees.JOB_ID = jobs.JOB_ID group by Cargo order by `Média salarial`, Cargo;
