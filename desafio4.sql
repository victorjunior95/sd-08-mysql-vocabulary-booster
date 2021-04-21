select jobs.JOB_TITLE as 'CARGO', round(avg(emp.SALARY), 2) as 'Média salarial',
case
when ROUND(AVG(emp.SALARY), 2) between 2000 and 5800 then 'Júnior'
when ROUND(AVG(emp.SALARY), 2) between 5801 and 7500 then 'Pleno'
when ROUND(AVG(emp.SALARY), 2) between 7501 and 10500 then 'Sênior'
when ROUND(AVG(emp.SALARY), 2) > 10500 then 'CEO'
end as `Senioridade`
from hr.jobs as jobs
inner join hr.employees as emp 
on jobs.JOB_ID = emp.JOB_ID
group by CARGO order by `Média salarial`, jobs.JOB_TITLE;
