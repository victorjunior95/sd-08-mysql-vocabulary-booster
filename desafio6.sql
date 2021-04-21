select concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) as `Nome completo`,
jobs.JOB_TITLE as Cargo, history.START_DATE as `Data de início do cargo`,
departments.DEPARTMENT_NAME as Departamento from hr.employees employees 
inner join hr.jobs jobs on jobs.JOB_ID = employees.JOB_ID 
inner join hr.job_history as `history` on jobs.JOB_ID = history.JOB_ID
inner join hr.departments departments on history.DEPARTMENT_ID = departments.DEPARTMENT_ID
order by `Nome completo` desc, Cargo asc;
