select concat(ucase(e.first_name),' ', ucase(e.last_name)) as `Nome completo`,
jh.start_date as `Data de início`,
e.salary as `Salário`
from hr.employees e
inner join hr.job_history jh
on e.employee_id = jh.employee_id
where month(jh.start_date) in (01,02,03)
order by `Nome Completo`, `Data de início`;
