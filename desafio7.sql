select  CONCAT(e.FIRST_NAME ,' ', e.LAST_NAME) as 'Nome completo', j.JOB_TITLE as 'Cargo',
(select START_DATE from hr.job_history where START_DATE = month(START_DATE)=01 and month(START_DATE)=02 and month(START_DATE)=03) as 'Data de início', e.SALARY AS 'Salário'
from hr.employees as e
inner join hr.jobs as j on j.JOB_ID = e.JOB_ID 
inner join hr.job_history as h on h.EMPLOYEE_ID = e.EMPLOYEE_ID
order by `Nome completo`, `Cargo`;
