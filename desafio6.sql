SELECT CONCAT(hremp.FIRST_NAME,' ', hremp.LAST_NAME) AS `Nome completo`,
hrjobs.JOB_TITLE AS `Cargo`,
hrjobhist.START_DATE AS 'Data de início do cargo',
hrdepartments.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hrjobhist
INNER JOIN hr.employees AS hremp ON hremp.EMPLOYEE_ID = hrjobhist.EMPLOYEE_ID
INNER JOIN hr.jobs AS hrjobs ON hrjobhist.JOB_ID = hrjobs.JOB_ID
INNER JOIN hr.departments AS hrdepartments ON hrjobhist.DEPARTMENT_ID = hrdepartments.DEPARTMENT_ID
ORDER BY 1 DESC, Cargo;
