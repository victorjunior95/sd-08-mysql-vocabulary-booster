select  CONCAT(e.FIRST_NAME ,' ', e.LAST_NAME) as 'Nome completo', j.JOB_TITLE as 'Cargo',
h.START_DATE as 'Data de início do cargo', dep.DEPARTMENT_NAME AS 'Departamento'
from hr.employees as e
inner join hr.jobs as j on j.JOB_ID = e.JOB_ID 
inner join hr.job_history as h on h.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.departments as dep on dep.DEPARTMENT_ID = h.DEPARTMENT_ID
order by `Nome completo` desc, `Cargo` asc;
 
