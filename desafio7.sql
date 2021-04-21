select concat(ucase(e.first_name),' ', ucase(e.last_name)) as `Nome completo`,
jh.start_date as `Data de início`,
e.salary as `Salário`
from hr.employees e
inner join hr.job_history jh
on e.job_id = jh.job_id
where month(jh.start_date) in (01,02,03)
order by `Nome Completo`, start_date;
