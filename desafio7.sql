select  CONCAT(e.FIRST_NAME ,' ', e.LAST_NAME) as 'Nome completo',
j.JOB_TITLE as 'Cargo',
h.START_DATE as 'Data de início',
e.SALARY AS 'Salário'
from hr.employees as e
inner join hr.jobs as j on j.JOB_ID = e.JOB_ID 
inner join hr.job_history  as h on h.EMPLOYEE_ID = e.EMPLOYEE_ID where month(START_DATE) in (01, 02, 03)
order by `Nome completo`, `Cargo`;
