select j.job_title as 'Cargo', round(avg(e.salary), 2) as `Média salarial`,
case 
when e.salary between 2000 and 5800 then 'Júnior'
when e.salary between 5801 and 7500 then 'Pleno'
when e.salary between 7501 and 10500 then 'Sênior'
else 'CEO'
end as Senioridade 
from hr.jobs j
inner join hr.employees e
on j.job_id = e.job_id
group by j.job_title
order by (e.salary), Cargo;
