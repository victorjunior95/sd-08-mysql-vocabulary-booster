select concat(ucase(e.first_name),' ', ucase(e.last_name)) as `Nome completo`,
start_date as `Data de início`,
salary as `Salário`
from employees e
inner join job_history jh
on e.job_id = jh.job_id
order by `Nome Completo`, start_date;
