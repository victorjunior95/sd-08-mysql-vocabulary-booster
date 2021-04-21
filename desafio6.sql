select concat(e.first_name,' ', e.last_name) as `Nome completo`,
j.job_title as `Cargo`,
jh.start_date as `Data de início do cargo`,
dpt.department_name as `Departamento`
from hr.employees e
inner join hr.job_history jh
on e.employee_id = jh.employee_id
inner join hr.jobs j
on jh.job_id = j.job_id
inner join hr.departments dpt
on jh.department_id = dpt.department_id
order by `Nome completo` ASC, `Cargo`; 
